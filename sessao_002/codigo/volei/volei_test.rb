require 'test/unit'
require 'rubygems'
require 'volei'
require 'redgreen'

class VoleiTest < Test::Unit::TestCase
  def setup
    @volei = Volei.new
  end
  
  def test_jogo_inicia_sem_ultimo_jogador
    assert_nil(@volei.ultimo_jogador)
  end
  
  def test_jogo_inicia_com_0_toques_do_ultimo_time
    assert_equal(0, @volei.quantidade_de_toques)
  end
  
  def test_resultado_do_jogo_eh_inacabado
    assert_equal("Inacabado", @volei.resultado)
  end
  
  def test_abc_1_joga_e_o_estado_muda
    @volei.jogada(["ABC 1"])
    assert_equal("ABC 1", @volei.ultimo_jogador)
  end
  
  def test_saque_abc_quadra_america_ponto_abc
    assert_equal("Ponto ABC", @volei.jogada(["ABC 1", "QUADRA America"]))
  end
  
  def test_saque_america_quadra_abc_ponto_america
    assert_equal("Ponto America", @volei.jogada(["America 1", "QUADRA ABC"]))
  end

  def test_dois_toques
    assert_equal("Ponto America", @volei.jogada(["ABC 1", "ABC 1"]))
  end
  
  def test_rede_america
    assert_equal("Ponto ABC", @volei.jogada(["ABC 1","America 1","REDE"]))
  end
  
  def test_rede_abc
    assert_equal("Ponto America", @volei.jogada(["America 2", "ABC 1", "REDE"]))
  end
  
  def test_saque_abc_rede
    assert_equal("Ponto America", @volei.jogada(["ABC 3", "REDE"])) 
  end
  
  def test_saque_abc_fora
    assert_equal("Ponto America", @volei.jogada(["ABC 1", "FORA"]))
  end
  
  def test_quatro_toques_pelo_mesmo_time
    assert_equal("Ponto ABC", @volei.jogada(["America 2", "America 1", "America 3", "America 4"]))
  end
  
end