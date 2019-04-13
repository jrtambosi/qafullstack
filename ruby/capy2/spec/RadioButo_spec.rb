

describe 'radion butto' , :radio, :smoke do

it 'seleçao por id' do 

    visit '/radios'
    choose('cap')
      
end

 it 'seleçao por find' , :radio2 do

    visit '/radios'
    choose('cap')

 find('input[value=guardians]').click

 end

end
