class Pagamento
    include ActiveModel::Validations
    include ActiveModel::Conversion
    extend ActiveModel::Naming
    attr_accessor :codigo,:data,:hora,:valor
    def initialize(attributes = {})
        @codigo= attributes[:codigo]
        @data=attributes[:data]
        @hora=attributes[:hora]
        @valor=attributes[:valor]
    end
end