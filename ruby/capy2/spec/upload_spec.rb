

describe 'upload arquivo' , :upload do


     before(:each) do
         visit '/upload'

        @arquivo = Dir.pwd + '/spec/fixtures/teste.txt'
        @imagens = Dir.pwd + '/spec/fixtures/bg-spider.png'


     end    

        it 'upload arquivo texto' do 
        
            attach_file('file-upload', @arquivo)  
            
            click_button 'Upload'

            div_arquivo = find('#uploaded-file')
            expect(div_arquivo.text).to eql 'teste.txt'
        end

        it 'upload arquivo imagem' do 
        
         attach_file('file-upload', @imagens)  
         click_button 'Upload'
        
         img = find('#new-image')
         img = expect(img[:src]).to include '/uploads/bg-spider.png'

         
     end



     after(:each) do
        sleep 3
     end

end