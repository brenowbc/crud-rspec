require "rails_helper"

feature "Criando os produtos" do
	before do
		visit '/'

		click_link 'Novo Produto'
	end
	
	scenario "Possibilidade de criar um produto" do	
		fill_in 'Nome', with: 'Produto 1'
		fill_in 'Descrição', with: 'Descrição do Produto 1'
		click_button 'Criar Produto'

		expect(page).to have_content('Produto foi criado.')
	end

	scenario "com nome inválido não posso criar um produto" do
		fill_in 'Nome', with: ''
		fill_in 'Descrição', with: 'Produto com uma boa Descrição para teste'
		click_button 'Criar Produto'

		expect(page).to have_content('Nome é muito curto (mínimo: 5 caracteres)')

	end
end