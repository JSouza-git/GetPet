# novo Pet
Given('Eu estou na pagina de pets') do
  visit 'pets/'
end

Given('Eu clico no botao new Pet') do
  click_link 'New Pet'
end
When('Eu preencho o campo nome com {string} o campo raca com {string} o campo cor com {string} o campo idade com {string} o campo porte com {string} o campo observacao com {string} e o campo cliente com {int}') do |nome, raca, cor, idade, porte, observacao, cliente|
  fill_in 'pet[nome]', with: nome
  fill_in 'pet[raca]', with: raca
  fill_in 'pet[cor]', with: cor
  fill_in 'pet[idade]', with: idade
  fill_in 'pet[porte]', with: porte
  fill_in 'pet[observacao]', with: observacao
end

When('Eu clico em Create Pet') do
  click_button 'Create Pet'
end

Then('Eu vejo uma mensagem informando que o pet foi salvo com sucesso') do   
  expect(page).to have_content('successfully')
end