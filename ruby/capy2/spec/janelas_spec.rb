describe 'Alernando janelas' , :janela do

    before(:each) do

        visit'/windows'
    end

    it 'Nova Janela'  do

        click_link 'Clique aqui'
                    
                    nova_janela = window_opened_by {click_link 'Clique aqui'}

                    within_window -> {page.title == 'Nova Janela'} do
                    expect(page).to have_content 'Aqui temos uma nova janela \o/'

                    nova_janela.close
                    expect(nova_janela.closed?).to be true
                    end
        sleep 3

    end


end