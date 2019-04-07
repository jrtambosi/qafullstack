
class Veiculo
    attr_accessor :nome, :marca, :modelo

    def initialize(nome,marca,modelo)

        self.nome = nome
        self.marca = marca
        self.modelo = modelo
    end

    def ligar
        puts "#{self.nome} esta pronto para ligar"
    end
        
    def buzinar
        puts 'beeeee!!!!'
    end
end


class Carro < Veiculo

    def dirigir
        puts "#{nome}iniciando trajeto"
    end

end

class Moto < Veiculo

   def pilotar
       puts "#{nome}iniciando trajeto"
   end

end

civic = Carro.new('civic','honda','si')
civic.ligar
civic.dirigir

lancer = Carro.new('lancer','aaa','bbbb')
lancer.ligar
lancer.buzinar
lancer.dirigir

fazer =Moto.new('faser','ccc','dddd')
fazer.ligar
fazer.buzinar
fazer.pilotar

