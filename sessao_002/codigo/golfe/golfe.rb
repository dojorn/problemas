class Golfe
  def pontuacao(par, tacadas)
    diferenca = tacadas - par
    if (tacadas == 1)
      "Hole in One"
    elsif (diferenca == -1)
      "birdie"
    elsif (diferenca == -2)
      "eagle"
    elsif (diferenca <= -3)
      "double eagle"
    elsif (diferenca == 1)
      "bogey"
    elsif (diferenca >= 2)
      "double bogey"      
    elsif (diferenca == 0)
      "par"
    end
  end
end