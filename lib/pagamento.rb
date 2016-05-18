class Pagamento
    attr_accessor :codigo,:data,:hora,:valor
    def initialize
        @codigo="123"
        @data="31/05/2016"
        @hora="23:59"
        @valor="79,90"
    end
end