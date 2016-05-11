require "spec_helper"
require "reboque"
describe Reboque do
    regex_num = /[0-9]/
    regex_endereco = /./
    valid_input = "[a-zA-z ]"
    invalid_input= "[^A-Za-z0-9 ]"
    obj = Reboque.new
    
    it "Checar instância de reboque" do
        expect(obj).to be_an_instance_of(Reboque)
    end
    
    it "O codigo é válido?" do #verifica se tem espaço e letras que compõe o codigo
        expect(obj.codigo).not_to match(valid_input)
        expect(obj.codigo).to match(regex_num)
        expect(obj.codigo).not_to be_empty
    end
    
    it "A data é valida?" do
        #algoritmo para separar dia/mes/ano
        array_data = obj.data.split('/')
        dia = array_data[0]
        mes = array_data[1]
        ano = array_data[2]
        expect(dia).to match()
    
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