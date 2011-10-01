require 'test/unit'
require 'horaextra'
require 'rubygems'
require 'redgreen'

class HoraextraTest < Test::Unit::TestCase
  
  def setup
    @mesa = Mesa.new(5)
  end
  def test_iniciar_mesa_com_5_pessoas

    assert_equal(5, @mesa.pessoas)
  end
  
  def test_armazenar_o_que_foi_consumido
    assert_equal(5400000000, @mesa.consumir(5400000000) )
  end  
  
  def test_armazenar_mais_de_um_consumo

    @mesa.consumir(500)
    assert_equal(2000,@mesa.consumir(1500))
  end
  
  def test_calcular_total_por_pessoas 
    @mesa.consumir(20000)
    @mesa.consumir(20000)
    @mesa.consumir(20000)
    assert_equal(13200,@mesa.dividir_conta())
  end
  
end