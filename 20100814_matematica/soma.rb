class Matematica
  def self.soma(x, y)
    x + y
  end
  def self.multiplicacao(x, y)
    x*y
  end
  def self.subtracao(x,y)
    x-y
  end
  def self.divisao(x, y)
    x.to_f/y.to_f
  end
  
  def self.resto(x, y)
    x % y
  end
end