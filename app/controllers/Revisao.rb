class Pagamento
  attr_accessor :codigo_public, :hora_public, :km_public, :data_public, :public_relatorio, :public_autorizacao
    
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
  def setRelatorio(relatorio)
    @relatorio = relatorio
  end
  def getRelatorio()
    return @relatorio
  end
  def setAutorizacao(autorizacao)
    @autorizacao = autorizacao
  end
  def getAutorizacao()
    return @autorizacao
  end
  private
  attr_accessor :codigo, :hora, :data, :km, :relatorio, :autorizacao
end