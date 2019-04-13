describe 'Mause Hover' , :ho do

    before(:each) do

        visit '
    end

    it 'Quando passo o mause sobre o blade'  do

        #montar seletor css

        card = find ('img[alt=Blade')

        card.hover

        expect(page).to have_content 'Nome: Blade'
        
    end



    it 'Quando passo o mause sobre o pantera'  do

        #montar seletor css

        card = find ('img[alt="Pantera Negra"')

        card.hover

        expect(page).to have_content 'Nome: Pantera Negra'
        
    end


    it 'Quando passo o mause sobre o homem aranha'  do

        #montar seletor css

        card = find ('img[alt="Homem Aranha"')

        card.hover

        expect(page).to have_content 'Nome: Homem Aranha'
        
    end



    after(:each) do
        sleep 0

    end

end