class ClienteController < ApplicationController
  def cadastrar
  end
  def form
   
  end
  
def clientnew
    @cliente = Cliente.new(cliente_params)
    @cliente['cpf'] = params[:cliente]['cpf']
    @cliente['nome'] = params[:cliente]['nome']
    @cliente['endereco'] = params[:cliente]['endereco']
    @cliente['telefone'] = params[:cliente]['telefone']
    substituir = ActiveRecord::Base.connection
    result = substituir.execute %{SELECT * FROM clientes WHERE EXISTS (SELECT * FROM clientes WHERE cpf ='#{@cliente['cpf']}')}
  if result.any?  do;
      render 'cliente/createerror'
  end
  else
    @cliente.save!
  end
end
  
  def consulta
    @consulta = Cliente.all
  end
  def update
        conn = ActiveRecord::Base.connection
        @update = Cliente.new(cliente_params)
        @update = params[:cliente]['cpf']
        conn.execute %{DELETE FROM clientes WHERE cpf = '#{@update}'}
        render 'cliente/update'
  end
  private
  def cliente_params
        params.require(:cliente).permit(:cpf, :nome, :endereco, :telefone)
  end
end




