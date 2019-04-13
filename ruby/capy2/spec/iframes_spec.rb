describe 'Ifremes' , :dc do

    describe ' bom' , :nice_bom do
        before(:each) do

            visit '/nice_iframe'
        end
    
        it 'Adicionar no carrinho'  do
            
            within_frame('burgerId') do
            
                produto = find('.menu-item-info-box', text: 'REFRIGERANTE')
                produto.find('a').click
                expect(find('#cart')).to have_content 'R$ 4,50'

                sleep 5

            
            end

        end
    
    end
    
    describe 'IFRAME RUIM' ,:ruim do
        before(:each) do

            visit '/bad_iframe'
        end

        it ' carrinho deve estar vazio ' do 

            script = '$(".box-iframe").attr("id", "tempId");'

            page.execute_script(script)

            within_frame('tempId') do
            
                expect(find('#cart')).to have_content 'Seu carrinho está vazio!'
                sleep 3
            
            end
        end

    end


end