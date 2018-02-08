class VitrinePage
  include RSpec::Matchers
  include Capybara::DSL

  def selecionar_produto(index)
    all('.productImage')[index.to_i].click
  end


end
