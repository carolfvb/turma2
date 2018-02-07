class BuscaPage
  include RSpec::Matchers
  include Capybara::DSL

  def buscar_produto(produto)
    find(EL['campo_busca']).click
    find(EL['campo_busca']).set(produto)
  end

  def clicar_busca(busca)
    find(EL[busca], wait:10).click
  end
end
