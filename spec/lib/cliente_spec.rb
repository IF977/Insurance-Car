require "spec_helper"
require "cliente"
describe Cliente do
    regex_num = /[0-9]/
    regex_endereco = /./
    valid_input = "[a-zA-z ]"
    invalid_input= "[^A-Za-z0-9 ]"
    obj = Cliente.new
    
    it "Checar instância de cliente" do
        expect(obj).to be_an_instance_of(Cliente)
    end
    
    it "O nome é válido?" do #verifica se tem espaço e letras que compões  nome
        expect(obj.nome).to match(valid_input)
        expect(obj.nome).not_to match(regex_num)
        expect(obj.nome).not_to match(invalid_input) #aprimoramento do teste
    end
    
    it "endereco é valido?" do
        expect(obj.endereco).to match(regex_endereco)
        expect(obj.endereco).not_to be_empty
        expect(obj.endereco).to be_an_instance_of(String)
    end
    
    it "telefone só tem numeros?" do
        expect(obj.telefone).to match(regex_num)
        expect(obj.telefone).not_to be_empty
        expect(obj.telefone).not_to match("00000000")
        expect(obj.telefone).not_to match(valid_input)
    end
    it "CPF é válido?" do
        
        expect(obj.cpf).to match(regex_num)
        expect(obj.cpf).not_to be_empty
        expect(obj.cpf).not_to match("00000000000")
        expect(obj.cpf).not_to match(valid_input)
    end
end