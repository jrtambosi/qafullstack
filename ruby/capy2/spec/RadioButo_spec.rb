

describe 'radion butto' , :radio do

it 'seleçao por id' do 

    visit 'https://training-wheels-protocol.herokuapp.com/radios'
    choose('cap')
      
end

 it 'seleçao por find' , :radio2 do

    visit 'https://training-wheels-protocol.herokuapp.com/radios'
    choose('cap')

 find('input[value=guardians]').click

 end

end
