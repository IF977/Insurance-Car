class CarroController < ApplicationController
    
    def cardastrar
        
    end
    
    def input
        @carro = Carro.new(carro_params)
        @carro['placa'] = params[:carro]['placa']
        @carro['marca'] = params[:carro]['marca']
        @carro['modelo'] = params[:carro]['modelo']
        @carro['clientes'] = params[:carro]['cliente']
        @carro.save!
    end
    def consulta
        @consulta = Carro.all
        puts "teste"
    end
    private
    def carro_params
        params.require(:carro).permit(:placa, :marca, :modelo, :cliente)
    end
end
