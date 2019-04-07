
class Vingadores
    attr_accessor :list

    def initialize
        self.list = []
    end

    def put(vinga)

        self.list.push(vinga)
    end
end


describe Vingadores do
    
    it 'deve adicionar um vinfador' do

        hq = Vingadores.new

        hq.put('homemaranha')

        expect(hq.list).to eql ['homemaranha']
    end

end 

describe Vingadores do
it 'deve adicionar uma lista de vingadores' do
hq = Vingadores.new
hq.put('thor')
hq.put('hulk')
hq.put('spiderman')
resultado = hq.list.size > 0
expect(hq.list.size).to be > 0
expect(resultado).to be true
end

it 'thor e o primeiro da lista' do
hq = Vingadores.new
hq.put('thor')
hq.put('hulk')
hq.put('spiderman')
expect(hq.list).to start_with('thor')
end


it 'iroman deve ser o ultimo dalista' do

    hq = Vingadores.new
    hq.put('thor')
    hq.put('hulk')
    hq.put('spiderman')
    hq.put('iroman')
    
    expect(hq.list).to end_with('iroman')

end

it 'contem valor' do

avenger='peter paker'

expect(avenger).to match(/paker/)
expect(avenger).not_to match(/junior/)



end


end