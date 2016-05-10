require "spec_helper"
require "cliente"
describe Cliente do
    regex_num = /[0-9]/
    #regex_nome = /[A-Za-z]/
    regex_endereco = /./
    valid_input = "[a-zA-z ]" #
    obj = Cliente.new
    
    it "Checar instância de cliente" do
        expect(obj).to be_an_instance_of(Cliente)
    end
    
    it "O nome é válido?" do
        expect(obj.nome).to match(valid_input) #and not_to match(regex_num) #verifica se tem espaço e letras que compões  nome
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
    end
end