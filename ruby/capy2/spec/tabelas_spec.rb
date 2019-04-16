describe ' Tabelas' , :tabis, :smoke do

    before(:each) do

        visit '/tables'
    end

    it 'Exibir salario stark'  do

        atores = all('table tbody tr') 
        stark = atores.detect {|ator| ator.text.include?('Robert Downey Jr')}

        expect(stark.text).to include '10.000.000'

    end


    it 'deve exibir salrio Diesel ' do
    
        diesel = find('table tbody tr', text: '@vindiesel')
        
        expect(diesel).to have_content '10.000.000'
    
    
    end

     it 'deve exibir filme velozes' do
    
            diesel = find('table tbody tr', text: '@vindiesel' )

            movie = diesel.all('td')[2].text

            expect(movie).to eql 've e Furiosos'
    
    end



    it 'deve exibir o insta do C Evans' do

        evans = find('table tbody tr' , text: 'Chris Evans')
        insta = evans.all('td')[4].text

        expect(insta).to eql '@teamcevans'

    end

    it 'deve selecionar chris prat para ediçao'   do

        prat = find('table tbody tr', text: 'Chris Prat')
        prat.find('a', text: 'edit').click

        msg = page.driver.browser.switch_to.alert.text

        expect(msg).to eql 'Chris Pratt foi selecionado para edição!'

    end



end