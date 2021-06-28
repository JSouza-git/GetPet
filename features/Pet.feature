Feature: Pet
As an pet do site GetPet
I want to adicionar, remover, ver e editar um pet
so that eu nao ter que fazer isso manualmente

Scenario: novo pet
    Given Eu estou na pagina de pets
    And Eu clico no botao new Pet
    When Eu preencho o campo nome com "Estrela" o campo raca com "SRD" o campo cor com "Preto" o campo idade com "2" o campo porte com "medio" o campo observacao com "" e o campo cliente com 1
    And Eu clico em Create Pet
    Then Eu vejo uma mensagem informando que o pet foi salvo com sucesso

