class ReboqueController < ApplicationController
  def listar
    @listar = Reboque.all
    render 'reboque/cadreb'
  end
  def detalhes
    consulta = Reboque.new(reboqueconsulta_params)
    placa = consulta['placa']
    sql = ActiveRecord::Base.connection
    @detalhes = sql.execute %{SELECT * FROM reboques WHERE placa = '#{placa}')}
  end
  def cadreb
    @cadreb = Reboque.new(reboque_params)
    @cadreb['placa'] = params[:reboque]['placa']
    @cadreb['km'] = params[:reboque]['km']
    @cadreb['origem'] = params[:reboque]['origem']
    @cadreb['destino'] = params[:reboque]['destino']
    @cadreb['distancia'] = params[:reboque]['distancia']
    @cadreb.save!
    @listar=Reboque.all
  end
  def reboque_params
    params.require(:reboque).permit(:placa, :data, :hora, :km, :origem, :destino, :distancia)
  end
  def reboqueconsulta_params
    params.require(:reboque).permit(:placa)
  end
end
