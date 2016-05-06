class Veiculo
  attr_accessor :placa_public, :marca_public, :modelo_public
    
  def setPlaca(placa)
    @placa = placa
  end
  def getPlaca()
    return @placa
  end
  def setMarca(marca)
    @marca = marca
  end
  def getMarca()
    return @marca
  end
  def setModelo(modelo)
    @modelo = modelo
  end
  def getModelo()
    return @modelo
  end
  private
  attr_accessor :placa, :marca, :modelo
end