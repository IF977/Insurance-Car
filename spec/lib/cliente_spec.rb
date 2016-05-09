require "spec_helper"
require "cliente"
describe Cliente do
    regex_num = /[0-9]/
    regex_nome = /[A-Za-z]/
    regex_endereco = /./
    valid_input = "[a-zA-z ]" #
    
    self=cliente.new
    
    it "Checar instância de self" do
        expect(self).to be_an_instance_of(Cliente)
    end
    
    it "O nome é válido?" do
        expect(self.nome).to match(valid_input) and not_to match(regex_num) #verifica se não tem números, verifica se tem espaço e letras
    end
    
    it "endereco é valido?" do
        expect(self.endereco).to match(regex_endereco)
        expect(self.endereco).not_to match(" ")
        expect(self.endereco).not_to be_empty
        expect(self.endereco).to be_an_instance_of(String)
    end
    
    it "telefone só tem numeros?" do
        expect(us.password).to match(regex_number)
        expect(us.password).not_to be_empty
        expect(us.password).not_to match("00000000")
    end
end