describe ' Drad Drop' , :dd do

    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/drag_and_drop'
    end

    it 'Homem arannha para time stark'  do

        stark = find('.team-stark .column')
        cap = find('.team-cap .column')


        spidermand = find('img[alt$=Aranha]')
        spidermand.drag_to stark

        sleep 2
        # verifica se a imagem trocou de lado
        expect(stark).to have_css 'img[alt$=Aranha]'
        #verefica se a imagem não esta mais no ponto inicial
        expect(cap).not_to have_css 'img[alt$=Aranha]'

    end


end