require 'test/unit'
require 'golfe.rb'
require 'rubygems'
require 'redgreen'

class GolfeTest < Test::Unit::TestCase
  def setup
    @golfe = Golfe.new
  end
  def test_quando_1_tacada_retornar_hole_in_one
    assert_equal("Hole in One", @golfe.pontuacao(3,1))
  end
  
  def test_quando_o_numero_de_tacadas_igual_ao_par_retorna_Par
    assert_equal("par",@golfe.pontuacao(2,2))
  end
  
  def test_quando_par_menos_1_tacada_retorne_birdie
    assert_equal("birdie", @golfe.pontuacao(3,2))
  end
  
  def test_quando_par_menos_2_tacadas_retorne_eagle
    assert_equal("eagle", @golfe.pontuacao(4,2))
  end
  
  def test_quando_par_menos_3_tacadas_retorne_double_eagle
    assert_equal("double eagle", @golfe.pontuacao(5,2))
  end
  
  def test_quando_par_menos_5_tacadas_retorne_double_eagle
     assert_equal("double eagle", @golfe.pontuacao(10,5))
  end
    
  def test_quando_par_mais_1_tacada_retorne_bogey
    assert_equal("bogey", @golfe.pontuacao(3,4))
  end
  
  def test_quando_par_mais_2_tacadas_retorne_double_bogey
    assert_equal("double bogey", @golfe.pontuacao(3,5))
  end
  def test_quando_par_2_tacadas_ou_mais_retorne_double_bogey
    assert_equal("double bogey", @golfe.pontuacao(3,6))
  end  
end