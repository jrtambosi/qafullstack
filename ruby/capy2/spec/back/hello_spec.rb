
describe 'primeiro script' do

    it 'visitar pagina' do

        visit 'https://training-wheels-protocol.herokuapp.com/'

        expect(page.title).to eql'Training Wheels Protocol'

        puts page.title 

    end

end