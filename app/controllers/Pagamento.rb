class Pagamento
  attr_accessor :codigo_public, :hora_public, :valor_public, :data_public
    
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
  def setValor(valor)
    @valor = valor
  end
  def getValor()
    return @valor
  end
  private
  attr_accessor :codigo, :hora, :data, :valor
end