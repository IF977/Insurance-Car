class Cliente
  attr_accessor :cpf_public, :nome_public, :endereco_public, :telefone_public
    
  def setCpf(cpf)
    @cpf = cpf
  end
  def getCpf()
    return @cpf
  end
  def setNome(nome)
    @nome = nome
  end
  def getNome()
    return @nome
  end
  def setEndereco(endereco)
    @endereco = endereco
  end
  def getEndereco()
    return @endereco
  end
  def setTelefone(telefone)
    @telefone = telefone
  end
  def getTelefone()
    return @telefone
  end
  private
  attr_accessor :cpf, :nome, :endereco, :telefone
end