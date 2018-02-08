Dado(/^que estou na url "([^"]*)"$/) do |url|
  visit(url)
end

Quando(/^clico no link "([^"]*)"$/) do |link_cadastro|
  CommonPage.new.clicar_elemento(link_cadastro)
end

Quando(/^seleciono "([^"]*)"$/) do |novo_cadastro|
  CommonPage.new.clicar_elemento(novo_cadastro)
end

#teste de Cadastro
Quando(/^preencho as informacoes de cadastro "([^"]*)"$/) do |tipo_pessoa|
  CadastroPage.new.send("preecherCadastro_#{tipo_pessoa}")
end

Quando(/^insiro no campo Busca o texto "([^"]*)"$/) do |busca_produto|
  BuscaPage.new.buscar_produto(busca_produto)
end

Quando(/^clico no botao "([^"]*)" indice "([^"]*)"$/) do |botao, index|
  CommonPage.new.clicar_elemento(botao, index)
end

Entao(/^e exibido o texto do "([^"]*)"$/) do |produto|
  AssertPage.new.valida_produto(produto)
end

Entao(/^sou direcionado para a home logados com "([^"]*)"$/) do |tipo_pessoa|
  AssertPage.new.valida_usuario_logado(tipo_pessoa)
end

Quando(/^seleciono o produto na posicao (\d+)$/) do |index|
  VitrinePage.new.selecionar_produto(index)
end

Entao(/^valido a existencia do "([^"]*)" no carrinho$/) do |produto_carrinho|
  AssertPage.new.valida_existencia_produto_carrinho(produto_carrinho)
end
