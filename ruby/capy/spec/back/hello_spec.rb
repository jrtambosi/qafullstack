
describe 'primeiro script' do

    it 'visitar pagina' do

        visit '/'

        expect(page.title).to eql'Training Wheels Protocol'

        puts page.title 

    end

end