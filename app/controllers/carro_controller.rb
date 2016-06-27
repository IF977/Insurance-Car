class CarroController < ApplicationController
    include ActionView::Helpers::FormOptionsHelper
    
def cardastrar
    @cardastrar= Cliente.all
end
    def form
    end
    def show
        @erro = "A placa inserida é inválida. Por favor, tente novamente."
    end
    
def input
    @carro = Carro.new(carro_params)
    @carro['placa'] = params[:carro]['placa']
    plc_valida = @carro['placa'].split('-')
    if plc_valida[0].length > 3;
        redirect_to '/carro/invalido'
        return
    end
    if plc_valida[1].nil?
        redirect_to '/carro/invalido'
        return
    end
    if plc_valida[1].length > 4;
        redirect_to '/carro/invalido'
        return
    end
    if not (plc_valida[0].match(/\d/)).nil?;
        redirect_to '/carro/invalido'
        return
    end
    if not (plc_valida[1].match(/\D/)).nil?;
        redirect_to '/carro/invalido'
        return
        
    end
    @carro['marca'] = params[:carro]['marca']
    @carro['modelo'] = params[:carro]['modelo']
    @carro['cliente'] = params[:carro]['cliente']
    substituir = ActiveRecord::Base.connection
    result = substituir.execute %{SELECT * FROM carros WHERE EXISTS (SELECT * FROM carros WHERE placa ='#{@carro['placa']}')}
    if result.any? do
        @erro = ",a placa referenciada já existe. "
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
        params.permit(:placa, :id)
    end
end

