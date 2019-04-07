
class Conta
        attr_accessor :saldo 
        attr_accessor :nome

    def initialize(nome)
        self.saldo = 0.0
        self.nome = nome
    end

    def deposita(valor)
        
        self.saldo += valor

        # puts 'depositando a quantia de' + valor.to_s + 'reais'

        puts "depositando o valor de #{valor} reais na conta de #{self.nome}"

    end

    end

    c = Conta.new('junior')
    c.deposita(100.00)
    c.deposita(10.00)
    puts c.saldo
    puts c.nome