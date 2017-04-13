# language: pt
# encoding: utf-8

  Funcionalidade: Buscar por Carro
  Eu como usuário
  Quero realizar busca por no app Webmotors
  Para que visualize os veiculos de acordo com o meu interesse
  
  @busca_carro
  Esquema do Cenário: Busca Carro por Marca/Modelo/Versao
  Dado que acesse a página de busca por veiculo
  Quando faço uma busca por "<Marca>", "<Modelo>", "<Versao>"
  Então deve ser exibido os veiculos referentes a minha busca
  
  Exemplos:
      | Marca     | Modelo | Versao                           | 
      | Chevrolet | Onix   | 1.0 MPFI LS 8V FLEX 4P MANUAL    | 
      | Fiat      | Punto  | 1.4 ATTRACTIVE 8V FLEX 4P MANUAL | 
  