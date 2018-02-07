#language: pt

Funcionalidade: Busca

Contexto: Compra
  Dado que estou na url "https://www.casasbahia.com.br"
  Quando insiro no campo Busca o texto "Iphone"
  E clico no botao "btn_buscar"

Cenario: Buscar um produto no site
  Entao e exibido o texto do "Iphone"

Cenario: Adicionar produto ao carrinho
  E seleciono o produto
  E clico no botao "btn_comprar"
  E clico no botao "btn_continuar_garantia"
  Entao valido a existencia do "iPhone" no carrinho
