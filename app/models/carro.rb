class Veiculo
include ActiveModel::Validations
include ActiveModel::Conversion
extend ActiveModel::Naming
    attr_accessor :placa,:marca,:modelo, :cliente
    def initialize(attributes = {})
        @placa = attributes[:placa]
        @marca = attributes[:marca]
        @modelo = attributes[:modelo]
        @cliente = attributes[:cliente]
    end
end