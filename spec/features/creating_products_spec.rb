require "rails_helper"

feature "Criando os produtos" do
	scenario "Possibilidade de criar um produto" do	
		visit '/'

		click_link 'Novo Produto'

		fill_in 'Nome', with: 'Produto 1'
		fill_in 'Descrição', with: 'Descrição do Produto 1'
		click_button 'Criar Produto'

		expect(page).to have_content('Produto foi criado.')
	end
end