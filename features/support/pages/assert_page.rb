class AssertPage
  include RSpec::Matchers
  include Capybara::DSL

 def valida_produto (produto)
   assert_text(produto, wait: 10)
 end

 def valida_usuario_logado (tipo_pessoa)
   if tipo_pessoa == "juridica"
     assert_text("Empresa Teste")
   else
     assert_text("Gervazio")
   end
 end

 def valida_existencia_produto_carrinho(produto_carrinho)
     assert_selector(EL['lbl_produto_carrinho'], text:produto_carrinho, wait:10)
 end

end
