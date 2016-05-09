class Veiculo
    attr_accessor :placa,:marca,:modelo
    def iniciando
        @placa = "ABC-1234"
        @marca = "Hyundai"
        @modelo = "hb20"
    end
    print(@placa)
    print(@marca)
    print(@modelo)
end