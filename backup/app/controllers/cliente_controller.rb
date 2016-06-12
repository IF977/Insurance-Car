class ClienteController < ApplicationController
  def cadastrar
  end
  def clientnew
        @cliente = Cliente.new(cliente_params)
        @cliente['cpf'] = params[:cliente]['cpf']
        @cliente['nome'] = params[:cliente]['nome']
        @cliente['endereco'] = params[:cliente]['endereco']
        @cliente['telefone'] = params[:cliente]['telefone']
        @cliente.save!
  end
  
  def consulta
    @consulta = Cliente.all
  end
  private
  def cliente_params
        params.require(:cliente).permit(:cpf, :nome, :endereco, :telefone)
  end
end
