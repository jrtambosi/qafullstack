

describe '' , :key do

    before(:each) do

         visit 'https://training-wheels-protocol.herokuapp.com/key_presses'
    end

    it 'enviando teclas'  do
            find('#campo-id').send_keys :tab
            sleep 5
            expect(page).to have_content 'You entered: TAB'

    end

    it 'monrado array de simbolos do rub' , :arr do
   
        teclas = %i[tab escape enter shift control alt]
        teclas.each do |t|
            find('#campo-id').send_keys t
            expect(page).to have_content 'You entered: ' + t.to_s.upcase
            puts t 
            sleep 5
        end
   
   
   
    end


    it ' enviando letras' , :letras do
    
            letras = %w[a s d f g h j k l ]

            letras.each do |l|
                find('#campo-id').send_keys l 
           puts     expect(page).to have_content 'You entered: ' + l.to_s.upcase
                sleep 1
            end
    
    
    
    end

end