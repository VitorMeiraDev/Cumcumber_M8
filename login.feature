Feature: Login na Plataforma
  Como cliente da EBAC-SHOP
  Quero fazer o login na plataforma
  Para visualizar meus pedidos

  Background:
    Dado que estou na página de login da EBAC-SHOP

  Scenario: Login com sucesso
    Quando eu inserir dados válidos no campo "Usuário" e "Senha"
    E clicar em "Entrar"
    Então devo ser redirecionado para a tela de checkout

  Scenario: Login com dados inválidos
    Quando eu inserir dados inválidos no campo "Usuário" ou "Senha"
    E clicar em "Entrar"
    Então deve exibir a mensagem de alerta "Usuário ou senha inválidos"
