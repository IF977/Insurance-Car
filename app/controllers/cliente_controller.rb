class ClienteController < ApplicationController
  def cadastrar
  end
  def form
   
  end
  
def clientnew                                                   #Novo cliente
    @cliente = Cliente.new(cliente_params)                      
    @cliente['cpf'] = params[:cliente]['cpf']
    cpf_valido = check_cpf(@cliente['cpf'])
    @cliente['nome'] = params[:cliente]['nome']
    @cliente['endereco'] = params[:cliente]['endereco']
    @cliente['telefone'] = params[:cliente]['telefone']
    substituir = ActiveRecord::Base.connection
    result = substituir.execute %{SELECT * FROM clientes WHERE EXISTS (SELECT * FROM clientes WHERE cpf ='#{@cliente['cpf']}')} #O dado Cliente já existe?
  if cpf_valido == false ;
    @error = "CPF INVÁLIDO!"
    render 'cliente/createerror'
    return
  end
  if result.any?  do;                                                                                                           #Se sim, erro
      @error = "CLIENTE EXISTENTE!"
      render 'cliente/createerror'
      return
  end
  else                                                                                                                          #Se não, salve
    @cliente.save!
  end
end
  
  def consulta                                                               #Listando tudo
    @consulta = Cliente.all
  end
def update                                                                  #Função para deletar um cliente dado o CPF
    @update = params['cpf']
    sql = ActiveRecord::Base.connection
    result = sql.execute %{SELECT * FROM clientes WHERE cpf ='#{@update}'}   #O cliente dado existe?
    if result.any?  do;
      sql.execute %{DELETE FROM clientes WHERE cpf = '#{@update}'}          #Se existe, delete
      render 'cliente/update'
    end
    else
      render 'cliente/delerror'                                             #Se nao existe, erro
    end
end
  private
  def cliente_params
        params.require(:cliente).permit(:cpf, :nome, :endereco, :telefone)
  end
  def del_params
    params.permit(:cpf)
  end
end




