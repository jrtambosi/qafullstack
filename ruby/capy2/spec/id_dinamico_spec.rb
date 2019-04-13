describe 'IDS Dinamicos' , :Din do

    before(:each) do

        visit'/access'
    end

    it 'cadastro'  do

        find('input[id$=UsernameInput]').set 'fernando'
        find('input[id^=PasswordInput]').set  '123456'
        find('a[id*=GetStartedButton]').click
        
        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
        sleep 3

    
    end


end