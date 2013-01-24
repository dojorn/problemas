require 'porrinha'
require 'test/unit'

class PorrinhaTest < Test::Unit::TestCase
  def setup
    @p = Porrinha.new(3)
  end

  def test_porrinha_existe
    assert_nothing_raised do
      Porrinha.new(3)
    end
  end
  
  def test_esconde_palitos_111

    @p.esconde_palitos(1, 1, 1)
    assert_equal(3, @p.soma)
  end
  
  def test_esconde_palitos_duas_vezes
    @p.esconde_palitos(1, 1, 1)
    assert_equal(3, @p.soma)
    @p.esconde_palitos(1, 1, 1)
    assert_equal(3, @p.soma)
  end
  
  def test_verifica_ganhador
    @p.esconde_palitos(2,3,1)
    ganhador = @p.palpites(5,6,2)
    assert_equal("jogador 2 ganhou", ganhador)
  end
  
  def test_num_jogadores_errado
    assert_raise(NumeroJogadoresErradoException) do
      @p.esconde_palitos(1,2,3,5)
    end
  end

end