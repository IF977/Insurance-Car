require "spec_helper"
require "veiculo"
describe Veiculo do
    regex_placa = /./
    valid_input = "[a-zA-z ]" #
    obj = Veiculo.new
    
    it "Checar instância de objeto" do
        expect(obj).to be_an_instance_of(Veiculo)
    end
    
    it "A placa é valida?" do
        expect(obj.placa).to match(regex_placa)
    end
    
    it "Modelo é valido?" do
        #expect(obj.modelo).to be_an_instance_of(String)
        expect(obj.modelo).not_to match(" ")
        expect(obj.modelo).not_to be_empty
        expect(obj.modelo).to match(valid_input)
    end
    
end