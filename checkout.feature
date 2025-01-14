Feature: Tela de Cadastro - Checkout
  Como cliente da EBAC-SHOP
  Quero concluir meu cadastro
  Para finalizar minha compra

  Background:
    Dado que estou na página de cadastro da EBAC-SHOP

  Scenario: Cadastro com sucesso
    Quando eu preencher todos os campos obrigatórios com dados válidos
    E clicar em "Cadastrar"
    Então o sistema deve concluir meu cadastro com sucesso

  Scenario: Cadastro com e-mail inválido
    Quando eu preencher o campo "E-mail" com "email_invalido"
    E clicar em "Cadastrar"
    Então deve exibir a mensagem "Formato de e-mail inválido"

  Scenario Outline: Cadastro com campos vazios
    Quando eu deixar o campo "<campo>" vazio
    E clicar em "Cadastrar"
    Então deve exibir a mensagem de alerta "Preenchimento obrigatório"

    Examples:
      | campo         |
      | Nome          |
      | E-mail        |
      | Endereço      |
