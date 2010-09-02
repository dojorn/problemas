class Mesa
  attr_accessor :pessoas
  attr_accessor :conta_da_mesa
  
  def initialize(quantidade_pessoas)
    @pessoas = quantidade_pessoas
    @conta_da_mesa = 0
  end
  
  def consumir(consumo)
    @conta_da_mesa += consumo
  end
  
  def dividir_conta()
    ((@conta_da_mesa / @pessoas )* 1.1).to_i
  end
end