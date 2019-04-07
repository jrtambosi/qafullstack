describe 'select 2' , :s2 do

    describe('single') do

         before(:each) do
          visit 'https://training-wheels-protocol.herokuapp.com/apps/select2/single.html'
     end

     it 'seleciona ator por nome ' do
            find('.select2-selection--single').click
            sleep 5
            find('.select2-results__option', text: 'Adam Sandler').click
     end
 
     it 'busca e clica no ator ' do
         find('.select2-selection--single').click
         find('.select2-search__field').set 'Chris Rock'
         find('.select2-results__option').click
         sleep 5
     end
     
    end

    describe 'multiple' , :multi  do

        before(:each) do
            visit 'https://training-wheels-protocol.herokuapp.com/apps/select2/multi.html'
       end

       def selecione(ator)

        find('.select2-selection--multiple').click
        sleep 1
        find('.select2-search__field').set ator
        find('.select2-results__option').click
    
       end

        it' SELECIONA ATORES' do
            
            atores = ['Jim Carrey','Owen wilson'] 

                  atores.each do |a|

                selecione(a)

             end
            

        end 
 
 
 
 
 
    end
    


end

