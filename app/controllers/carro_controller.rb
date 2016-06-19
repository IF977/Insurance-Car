class CarroController < ApplicationController
    include ActionView::Helpers::FormOptionsHelper
    
def cardastrar
    @cardastrar= Cliente.all
end
    def form
    end
    
def input
    @carro = Carro.new(carro_params)
    @carro['placa'] = params[:carro]['placa']
    @carro['marca'] = params[:carro]['marca']
    @carro['modelo'] = params[:carro]['modelo']
    @carro['cliente'] = params[:carro]['cliente']
    substituir = ActiveRecord::Base.connection
    result = substituir.execute %{SELECT * FROM carros WHERE EXISTS (SELECT * FROM carros WHERE placa ='#{@carro['placa']}')}
    if result.any? do
        render 'carro/createerror'
    end
    else
        @carro.save!
    end
end
def delete
    @delete = Carro.new(del_params)
    plc = @delete['placa']
    sql = ActiveRecord::Base.connection
    #result = sql.execute %{SELECT * FROM carros WHERE placa ='#{@delete}'}
    #if result.any?  do;
    sql.execute %{DELETE FROM carros WHERE placa = '#{plc}'}
    #end
    #else
    #  render 'carro/delerror'
    #end
end
    def consulta
        @consulta = Carro.all
        puts "teste"
    end
    private
    def carro_params
        params.require(:carro).permit(:placa, :marca, :modelo, :cliente)
    end
    def del_params
        params.require(:carro).permit(:placa)
    end
end

