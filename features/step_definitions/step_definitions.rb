Dado(/^que estou na url "([^"]*)"$/) do |url|
  visit(url)
end

Quando(/^clico no link "([^"]*)"$/) do |link_cadastro|
  click_link(link_cadastro)
end

Quando(/^seleciono "([^"]*)"$/) do |novo_cadastro|
  choose(novo_cadastro)
end

#teste de Cadastro
Quando(/^preencho as informacoes de cadastro "([^"]*)"$/) do |tipo_pessoa|
  CadastroPage.new.send("preecherCadastro_#{tipo_pessoa}")
end

Quando(/^insiro no campo Busca o texto "([^"]*)"$/) do |busca_produto|
  BuscaPage.new.buscar_produto(busca_produto)
end

Quando(/^clico no botao "([^"]*)"$/) do |botao|
  all(EL[botao])[0].click
end

Entao(/^e exibido o texto do "([^"]*)"$/) do |produto|
      assert_text(produto, wait: 10)
end

Entao(/^sou direcionado para a home logados com "([^"]*)"$/) do |tipo_pessoa|
  if tipo_pessoa == "juridica"
    assert_text("Empresa Teste")
  else
    assert_text("Gervazio")
  end
end

Quando(/^seleciono o produto$/) do
  all('.productImage')[0].click
end

Entao(/^valido a existencia do "([^"]*)" no carrinho$/) do |produto_carrinho|
  assert_selector(EL['lbl_produto_carrinho'], text:produto_carrinho, wait:10)
end
