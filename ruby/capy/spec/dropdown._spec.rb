describe 'Caixa de seleção ' , :dropdown do


it 'Item especifico simples com ID' do

    visit '/dropdown'
    select('Loki' , from: 'dropdown')  #passando o ID

    sleep 3 #temporario
end


it 'item especifico com o find' do

    visit '/dropdown'

    drop = find('.avenger-list')
    drop.find('option' , text: 'Scott Lang').select_option
    sleep 3

end


it 'Qualquer item' , :sample do 

    visit '/dropdown'

    drop = find('.avenger-list')
    drop.all('option').sample.select_option


    
    sleep 3
   
end

it ' ficha de inscrição' , :ficha do 

    visit 'https://fichadeinscricaoqa.uninter.com/'

    drop = find('.dropdown-content select-dropdown')
    drop.all('li').sample.select_option
    sleep 3

end



end