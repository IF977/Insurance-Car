class RevisaoController < ApplicationController
  def cadrev
  end
  def detalhe1
  end
  def detalhe2
  end
def detalhes
  consulta = Revisao.new(revisaoconsulta_params)
  id = consulta['id']
  @detalhes = Revisao.find_by id: id

  
end
  def delete
    consulta = Revisao.new(revisaoconsulta_params)
    id_del = consulta['id']
    sql = ActiveRecord::Base.connection
    @delete  = Revisao.find_by id: id_del
    sql.execute %{DELETE FROM revisaos WHERE id = '#{@delete['id']}'}
    @listar = Revisao.all
    render 'revisao/cadrev'
  end
  def listar
    @listar = Revisao.all
    render 'revisao/cadrev'
  end
def cadrev                                                   #Nova revisao
  @cadrev = Revisao.new(revisao_params)
  @cadrev['placa'] = params[:revisao]['placa']
  @cadrev['km'] = params[:revisao]['km']
  @cadrev['relatorio'] = params[:revisao]['relatorio']
  @cadrev['autorizacao'] = params[:revisao]['autorizacao']
  @cadrev['n_rev'] = Revisao.where(:placa => @cadrev['placa']).count('placa').to_i + 1
  if @cadrev['n_rev'].to_i > 3 then
    string = "<font color='red'><b>" + @cadrev['n_rev'].to_s + "</b></font>"
    @cadrev['n_rev'] = string.html_safe
    @cadrev.save!
  else
    @cadrev.save!
  end
  @listar = Revisao.all
end
  
  private
  def revisao_params
    params.require(:revisao).permit(:placa,:km, :relatorio, :autorizacao)
  end
  def revisaoconsulta_params
    params.permit(:placa, :id)
  end
end
