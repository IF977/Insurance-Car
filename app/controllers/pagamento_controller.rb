class PagamentoController < ApplicationController
  def registrar
    @placas = Carro.all
  end
def renderform
  render 'pagamento/delete'
end
def delete
    @delete = Pagamento.new(del_params)
    id = @delete['id']
    sql = ActiveRecord::Base.connection
    #result = sql.execute %{SELECT * FROM carros WHERE id ='#{id}'}
    #if result.any?  do;
    sql.execute %{DELETE FROM pagamentos WHERE id = '#{id}'}
    #end
    #else
    #  render 'carro/delerror'
    #end
end
def cadastro
    @cadastro = Pagamento.new(pagamento_params)                      
    @cadastro['placa'] = params[:pagamento]['placa']
    @cadastro['valor'] = params[:pagamento]['valor']
    substituir = ActiveRecord::Base.connection
    result = substituir.execute %{SELECT * FROM carros WHERE placa ='#{@cadastro['placa']}'} #A dada Placa existe de fato?
  if result.any? do;                                                                                                     #Se sim, salve o pagamento
    @cadastro.save!
  end
  else                                                                                                                          #Se não, erro
    render 'pagamento/placaerro'
  end
end
def consulta
  @consulta = Pagamento.all
end
  private
  def pagamento_params
        params.require(:pagamento).permit(:placa, :valor, :cod)
  end
  def del_params
    params.permit(:id)
  end

end
