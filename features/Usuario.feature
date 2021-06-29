Feature: Usuario
As an usuario do site GetPet
I want to adicionar, remover, ver e editar um usuario
so that eu nao ter que fazer isso manualmente


Scenario: novo usuario
    Given Eu estou na pagina de cadastro de usuario
    When Eu preencho o campo email com "teste@teste.com" o campo password com "123456" e o campo password_confirmation com "123456"
    And Eu clico em Sign up
    Then Eu vejo um titulo Get Pet
    And Eu vejo um texto com o email "teste@teste.com"

Scenario: novo usuario com email vazio
    Given Eu estou na pagina de cadastro de usuario
    When Eu preencho o campo password com "123456" e o campo password_confirmation com "123456"
    And Eu clico em Sign up
    Then Eu vejo um aviso falando que o email nao pode ser em branco

Scenario: novo usuario com senhas diferentes
    Given Eu estou na pagina de cadastro de usuario
     When Eu preencho o campo email com "teste@teste.com" o campo password com "123456" e o campo password_confirmation com "1234568"
    And Eu clico em Sign up
    Then Eu vejo um aviso falando que o as senhas sao diferentes