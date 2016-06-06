class Veiculo
include ActiveModel::Validations
include ActiveModel::Conversion
extend ActiveModel::Naming
    attr_accessor :placa,:marca,:modelo
    def initialize(attributes = {})
        @placa = attributes[:placa]
        @marca = attributes[:marca]
        @modelo = attributes[:modelo]
    end
end