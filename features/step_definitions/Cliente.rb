# novo cliente
Given('Eu estou na pagina de clientes') do
  visit 'clientes/'
end

Given('Eu clico no botao new Cliente') do
  click_link 'New Cliente'
end

When('Eu preencho o campo nome com {string} o campo endereco com {string}  e o campo telefone com {string}') do |nome, endereco, telefone|
  fill_in 'cliente[nome]', with: nome
  fill_in 'cliente[endereco]', with: endereco
  fill_in 'cliente[telefone]', with: telefone
end

When('Eu clico em Create Cliente') do
  click_button 'Create Cliente'
end

Then('Eu vejo uma mensagem informando que o cliente foi salvo com sucesso') do   
  expect(page).to have_content('Cliente was successfully created.')
end

When('Eu preencho o campo endereco com {string} e o campo telefone com  {string}') do |endereco, telefone|
  fill_in 'cliente[endereco]', with: endereco
  fill_in 'cliente[telefone]', with: telefone
end

Then('Eu vejo uma mensagem informando que o nome nao pode ser em branco') do   
  expect(page).to have_content("Nome can't be blank")  
end

When('When Eu preencho o campo nome com {string} o campo endereco com {string}  e o campo telefone com {string}') do |nome, endereco, telefone|
  fill_in 'cliente[nome]', with: nome
  fill_in 'cliente[endereco]', with: endereco
  fill_in 'cliente[telefone]', with: telefone
end

Then('Eu vejo uma mensagem informando que o telefone nao numerico') do  
  expect(page).to have_content("Telefone is not a number")
end
