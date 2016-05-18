require "spec_helper"
require "pagamento"
describe Pagamento do
    regex_num = /[0-9]/
    regex_relatorio = /./
    valid_input = "[a-zA-Z ]"
   # invalid_input= "[^A-Za-z0-9 ]"
    obj = Pagamento.new
    
    it "Checar instância de pagamento" do
        expect(obj).to be_an_instance_of(Pagamento)
    end
    
    it "O codigo é válido?" do #verifica se tem espaço e letras que compõe o codigo
        expect(obj.codigo).not_to match(valid_input)
        expect(obj.codigo).to match(regex_num)
        expect(obj.codigo).not_to be_empty
    end
    
    it "A data é valida?" do
        #algoritmo para separar dia/mes/ano
        array_data = obj.data.split('/')
        dia = Integer(array_data[0])
        mes = Integer(array_data[1])
        ano = Integer(array_data[2])
        if mes == 2 ;
            expect(dia).to be_between(1,28)
        end
        if mes ==1 or mes ==3 or mes==5 or mes==7 or mes==8 or mes==10 or mes==12;#mês com 31 dias
            expect(dia).to be_between(1,31)
        end
        if mes ==4 or mes ==6 or mes==9 or mes==11;#mês com 30 dias
            expect(dia).to be_between(1,30)
        end
        expect(Integer(mes)).to be_between(1,12)
        expect(Integer(dia)).to be_between(1,31)
        expect(ano).to be > 1900
        
    end
    it "A hora é valida?" do
        #algoritmo para validar a hora
        array_hora = obj.hora.split(':')
        hora = Integer(array_hora[0])
        minuto = Integer(array_hora[1])
        if hora >= 0 and minuto >= 0;
            expect(hora).to be_between(0,23)
            expect(minuto).to be_between(0,59)
        end
    end
    
    it "O valor é valido" do
        #algoritmo para separar dia/mes/ano
        array_valor = obj.valor.split(',')
        real = Integer(array_valor[0])
        centavo = Integer(array_valor[1])
        
        expect(Integer(real)).to be >= 0
        if real == 0 ;
            expect(Integer(centavo)).to be_between(1,99)
        end
        expect(Integer(centavo)).to be_between(0,99)
    end
end