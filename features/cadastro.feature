#language: pt

Funcionalidade: Cadastrar usuario no site
  Esquema do Cenario: Criar um novo cadastro na Casas Bahia
    Dado que estou na url "https://www.casasbahia.com.br"
    E clico no link "lnk_cadastro"
    E seleciono "rb_cadastro"
    E clico no botao "btn_continuar" indice "0"
    E preencho as informacoes de cadastro <tipo_pessoa>
    Quando clico no botao "btn_continuar_cadastro" indice "0"
    Entao sou direcionado para a home logados com <tipo_pessoa>

Exemplos:
  | tipo_pessoa |
  | "fisica"   |
  | "juridica" |
