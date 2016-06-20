class Reboque
  attr_accessor :codigo,:data,:hora,:km,:origem,:destino,:distancia
  
  def initialize
    @codigo = "0001"
    @data = "31/05/2016"
    @hora = "22:00"
    @km = "56000"
    @origem = "Varzea, recife-PE"
    @destino = "Arthur Lundgren 1, Paulista-PE"
    @distancia = "18"
  end
end