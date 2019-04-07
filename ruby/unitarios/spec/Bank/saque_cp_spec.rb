 require_relative '../../aplicacao/Bank'


describe ContaPoupanca do

    describe'Saque'do

        context 'Quando valor e positivo'do
            before(:all) do
                @cp = ContaPoupanca.new(1000.00)
                @cp.saca(200.00)
            end
            it 'entao atualiza saldo'do
                expect(@cp.saldo).to eql 798.00
            end
        end


        context 'quando o saldo e zero'do
            before(:all) do
                @cp= ContaPoupanca.new(0.00)
                @cp.saca(100.00)
            end
            it 'entao exibe mensagem' do
                expect(@cp.mensagem).to eql 'Saldo insuficiente para saque'
            end
            it 'e o saldo permanece com zero' do
                expect(@cp.saldo).to eql 0.00
            end
        end 
        context 'quando o saldo e insuficiente'do
            before(:all) do
                @cp= ContaPoupanca.new(100.00)
                @cp.saca(101.00)
            end
            it 'entao exibe mensagem' do
                expect(@cp.mensagem).to eql 'Saldo insuficiente para saque'
            end
            it 'e meu saldo permanece com zero' do
                expect(@cp.saldo).to eql 100.00
            end
        end 

        context 'quando supera limete de sqeye'do
            before(:all) do
                @cp = ContaPoupanca.new(1000.00)
                @cp.saca(701.00)
            end
            it 'entao exibe' do
                expect(@cp.mensagem).to eql 'limite maximo por saque e de 500'
            end
            it ' E meu saldo permanece conforme saldo inicial' do
                expect(@cp.saldo).to eql 1000.00
            end
        end
    end

end


   