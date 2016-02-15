require "rails_helper"

feature "Listando Produtos" do 
	it "Consigo acessar a página principal"	do
		visit root_path
		expect(page).to have_link('Produtos')
	end
end