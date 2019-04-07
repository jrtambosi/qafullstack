 require_relative '../../aplicacao/Bank'


describe ContaCorrente do

    describe'Saque'do

        context 'Quando valor e positivo'do
            before(:all) do
                @cc = ContaCorrente.new(1000.00)
                @cc.saca(200.00)
            end
            it 'entao atualiza saldo'do
                expect(@cc.saldo).to eql 795.00
            end
        end


        context 'quando o saldo e zero'do
            before(:all) do
                @cc= ContaCorrente.new(0.00)
                @cc.saca(100.00)
            end
            it 'entao exibe mensagem' do
                expect(@cc.mensagem).to eql 'Saldo insuficiente para saque'
            end
            it 'e o saldo permanece com zero' do
                expect(@cc.saldo).to eql 0.00
            end
        end 
        context 'quando o saldo e insuficiente'do
            before(:all) do
                @cc= ContaCorrente.new(100.00)
                @cc.saca(101.00)
            end
            it 'entao exibe mensagem' do
                expect(@cc.mensagem).to eql 'Saldo insuficiente para saque'
            end
            it 'e meu saldo permanece com zero' do
                expect(@cc.saldo).to eql 100.00
            end
        end 

        context 'quando supera limete de sqeye'do
            before(:all) do
                @cc = ContaCorrente.new(1000.00)
                @cc.saca(701.00)
            end
            it 'entao exibe' do
                expect(@cc.mensagem).to eql 'limite maximo por saque e de 700'
            end
            it ' E meu saldo permanece conforme saldo inicial' do
                expect(@cc.saldo).to eql 1000.00
            end
        end
    end

end


   