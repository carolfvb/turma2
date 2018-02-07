require 'ffaker'

CADASTRO = {
  fisica: {
    nome: 'Gervazio Oliveira',
    email: FFaker::Internet.email,
    cpf: FFaker::IdentificationBR.cpf
  },
  juridica: {
    razaoSocial: 'Empresa Teste',
    cnpj: FFaker::IdentificationBR.cnpj,
    email: FFaker::Internet.email
  }
}
