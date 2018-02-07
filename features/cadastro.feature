#language: pt

Funcionalidade: Cadastrar usuario no site
  Esquema do Cenario: Criar um novo cadastro na Casas Bahia
    Dado que estou na url "https://www.casasbahia.com.br"
    E clico no link "Faça seu login ou cadastre-se"
    E seleciono "Não, essa é a minha primeira compra"
    E clico no botao "btn_continuar"
    E preencho as informacoes de cadastro <tipo_pessoa>
    Quando clico no botao "btn_continuar_cadastro"
    Entao sou direcionado para a home logados com <tipo_pessoa>

Exemplos:
  | tipo_pessoa |
  | "fisica"   |
  | "juridica" |
