class Pagamento
  attr_accessor :codigo_public, :hora_public, :km_public, :data_public, :public_distancia, :public_destino, :public_origem
    
  def setCodigo(codigo)
    @codigo = codigo
  end
  def getCodigo()
    return @codigo
  end
  def setHora(hora)
    @hora = hora
  end
  def setHora
    return @hora
  end
  def setData(data)
    @data = data
  end
  def getData()
    return @data
  end
  def setKm(km)
    @km = km
  end
  def getKm()
    return @km
  end
  def setDistacia(distancia)
    @distancia = distancia
  end
  def getDistancia()
    return @distancia
  end
  def setDestino(destino)
    @destino = destino
  end
  def getDestino()
    return @destino
  end
  def setOrigem(origem)
    @origem = origem
  end
  def getOrigem()
    return @origem
  end
  private
  attr_accessor :codigo, :hora, :data, :km, :distancia, :destino, :origem
end