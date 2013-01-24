class Volei
  attr_reader :ultimo_jogador
  attr_reader :quantidade_de_toques
  
  def initialize
    @resultado = "Inacabado"
    @quantidade_de_toques = 0
  end
  
  def resultado
    @resultado
  end
  
  def jogada(lances)
    lances.each do |lance|
      consumir_lance(lance)
    end
    
    return resultado
  end
  
  def eh_jogador?(lance)
    lance.start_with?("America") or lance.start_with?("ABC")
  end
  
  def adversario(lance)
    if lance.start_with?("QUADRA")
      if lance.end_with?("America")
        "ABC"
      else
        "America"
      end  
    else
      if lance.start_with?("America")
        "ABC"
      else
        "America"
      end      
    end
  end
  
  def time_de(lance)
    if adversario(lance) == "America"
      "ABC"
    else
      "America"
    end
  end

  def consumir_lance(lance)
    if eh_jogador?(lance)
      if (lance == @ultimo_jogador)
        @resultado = "Ponto " + adversario(lance)
      else
        @quantidade_de_toques += 1
        if @ultimo_jogador and (time_de(lance) != time_de(@ultimo_jogador))
          @quantidade_de_toques = 1
        end
        @ultimo_jogador = lance
      end
      
      if @quantidade_de_toques > 3
        @resultado = "Ponto " + adversario(lance) 
      end
      
    else
      # nao e um jogador
      if lance.start_with?("QUADRA")
        @resultado = "Ponto " + adversario(lance)
      elsif ["REDE", "FORA"].include?(lance)
        @resultado = "Ponto " + adversario(@ultimo_jogador)
      end
    end
  end
end