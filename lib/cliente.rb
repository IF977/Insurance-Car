class Cliente
  attr_accessor :cpf,:nome,:endereco,:telefone
  
  def initialize
    @cpf = "00000000000"
    @nome = "Ricardo Barbosa Malafaia"
    @endereco = "Cin - ufpe, várzea, recife-PE"
    @telefone = "34555568"
  end
end