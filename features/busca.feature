#language: pt

Funcionalidade: Busca

Contexto: Compra
  Dado que estou na url "https://www.casasbahia.com.br"
  Quando insiro no campo Busca o texto "Iphone"
  E clico no botao "btn_buscar" indice "0"


@Busca1
Cenario: Buscar um produto no site
  Entao e exibido o texto do "Iphone"
@Adicionar
Cenario: Adicionar produto ao carrinho
  E seleciono o produto na posicao 0
  E clico no botao "btn_comprar" indice "0"
  E clico no botao "btn_continuar_garantia" indice "1"
  Entao valido a existencia do "iPhone" no carrinho
