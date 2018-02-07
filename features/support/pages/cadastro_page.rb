require 'ffaker'
class CadastroPage
  include RSpec::Matchers
  include Capybara::DSL

  def preecherCadastro_fisica
    dados_cadastro = CADASTRO[:fisica]
    $fisica = dados_cadastro[:nome]
    find(EL['campo_nomeCompleto']).set(dados_cadastro[:nome])
    find(EL['campo_cpf']).set(dados_cadastro[:cpf])
    find(EL['campo_telefoneDDD1']).set('11')
    find(EL['campo_telefone1']).set('22605522')
    find(EL['campo_telefoneDDD2']).set('11')
    find(EL['campo_telefone2']).set('985150315')
    find(EL['campo_dataNascimentoDia']).set('10')
    find(EL['campo_dataNascimentoMes']).set('12')
    find(EL['campo_dataNascimentoAno']).set('1990')
    find(EL['rb_genero_F']).click
    find(EL['campo_email']).set(dados_cadastro[:email])
    find(EL['campo_confirmarEmail']).set(dados_cadastro[:email])
    find(EL['campo_senha']).set('A1234567')
    find(EL['campo_confirmarSenha']).set('A1234567')
  end

  def preecherCadastro_juridica
    dados_cadastro = CADASTRO[:juridica]
    $juridica = dados_cadastro[:razaoSocial]
    find(EL['rb_tipoPessoa']).click
    find(EL['campo_razaoSocial']).set(dados_cadastro[:razaoSocial])
    find(EL['campo_nomeFantasia']).set(dados_cadastro[:razaoSocial])
    find(EL['campo_cnpj']).set(dados_cadastro[:cnpj])
    find(EL['chk_isento']).click
    find(EL['campo_telefoneDDD1PJ']).set('11')
    find(EL['campo_telefone1PJ']).set('22605522')
    find(EL['campo_telefoneDDD2PJ']).set('11')
    find(EL['campo_telefone2PJ']).set('985150315')
    find(EL['campo_email']).set(dados_cadastro[:email])
    find(EL['campo_confirmarEmail']).set(dados_cadastro[:email])
    find(EL['campo_senha']).set('A1234567')
    find(EL['campo_confirmarSenha']).set('A1234567')

  end





end
