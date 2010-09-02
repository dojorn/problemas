require 'test/unit'
require 'soma'
require 'rubygems'
require 'redgreen'

class MatematicaTest < Test::Unit::TestCase
  def test_soma_1_com_1
    resultado = Matematica.soma(1,1)
    assert_equal(2, resultado, "resultado deve ser igual a 2")
  end
  
  def test_soma_negativo_com_positivo
    resultado = Matematica.soma(-1,1)
    assert_equal(0, resultado, "resultado deve ser igual a 0")
  end
  
  def test_multiplica_1_com_2
    resultado = Matematica.multiplicacao(1,2)
    assert_equal(2, resultado, "resultado deve ser igual a 2")
  end
  def test_multiplica_positivo_negativo
    resultado = Matematica.multiplicacao(2, -1)
    assert_equal(-2, resultado, "resultado deve ser igual a -2")
  end
  def test_multiplica_negativo_negativo
    resultado = Matematica.multiplicacao(-2, -1)
    assert_equal(2, resultado, "resultado deve ser igual a 2" )
  end
  def test_subtracao_1_com_1
    resultado = Matematica.subtracao(1,1)
    assert_equal(0, resultado, "resultado deve ser igual a 0")
  end
  def test_subtracao_negativo_com_positivo
    resultado = Matematica.subtracao(-1,2)
    assert_equal(-3, resultado, "resultado deve ser igual a -3")
  end
  def test_divisao_positivo_com_positivo
    resultado = Matematica.divisao(1,2)
    assert_equal(0.5, resultado, "resultado deve ser igual a 0.5")
  end
  
  def test_resto_de_divisao_4_e_2
    resultado = Matematica.resto(4, 2)
    assert_equal(0, resultado, "o resultado deve ser igual a 0.")
  end
end