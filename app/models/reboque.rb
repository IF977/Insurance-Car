class Reboque
include ActiveModel::Validations
include ActiveModel::Conversion
extend ActiveModel::Naming
  attr_accessor :codigo,:data,:hora,:km,:origem,:destino,:distancia
  
  def initialize(attributes = {})
    @codigo = attributes[:codigo]
    @data = attributes[:data]
    @hora = attributes[:hora]
    @km = attributes[:km]
    @origem = attributes[:origem]
    @destino = attributes[:destino]
    @distancia = attributes[:distancia]
  end
end