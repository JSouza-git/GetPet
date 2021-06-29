Given('Eu estou na pagina de cadastro de usuario') do
  visit 'users/sign_up/'
end

When('Eu preencho o campo email com {string} o campo password com {string} e o campo password_confirmation com {string}') do |email, password, password_confirmation|
  fill_in 'user[email]', with: email
  fill_in 'user[password]', with: password
  fill_in 'user[password_confirmation]', with: password_confirmation
end

When('Eu clico em Sign up') do
  click_button 'Sign up'
end

Then('Eu vejo um titulo Get Pet') do
  expect(page).to have_content('Get Pet') 
end

Then('Eu vejo um texto com o email {string}') do |email|
  expect(page).to have_content(email) 
end

When('Eu preencho o campo password com {string} e o campo password_confirmation com {string}') do |password, password_confirmation|
  fill_in 'user[password]', with: password
  fill_in 'user[password_confirmation]', with: password_confirmation
end

Then('Eu vejo um aviso falando que o email nao pode ser em branco') do
  expect(page).to have_content("Email can't be blank") 
end

Then('Eu vejo um aviso falando que o as senhas sao diferentes') do
  expect(page).to have_content("Password confirmation doesn't match Password") 
end