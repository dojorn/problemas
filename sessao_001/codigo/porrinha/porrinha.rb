class NumeroJogadoresErradoException < Exception
end

class Porrinha
  attr_accessor :soma, :num_jogadores
  
  def initialize(num_jogadores)
    @soma = 0
    @num_jogadores = num_jogadores
  end
  
  def esconde_palitos(*jogadas)
    raise NumeroJogadoresErradoException, "devem ser #{@num_jogadores} jogadores" unless jogadas.size == @num_jogadores
    @soma = 0
    jogadas.each do |jogada|
      @soma += jogada
    end
  end
  
  def palpites(*chutes)
    raise NumeroJogadoresErradoException, "devem ser #{@num_jogadores} jogadores" unless chutes.size == @num_jogadores
    chutes.each_with_index do |chute, i|
      if chute == @soma
        return "jogador #{i+1} ganhou"
      end
    end
  end
end