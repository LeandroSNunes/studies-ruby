
#namespace global = main
p self

#dentro de uma classe = a propria classe
class Car
  p self
  
  #dentro de um metodo = a instancia da class
  def run
    p self
  end
  
  def cor
    p "carro de cor branca"
  end
  
  def style
    cor #checka se existe no receiver padrao, que é a instancia
  end
  
  # inserindo na singleton class
  def self.pneu
    p "#{self} na class"
  end
  # ou
  class << self
    def pneus
      p "#{self} na class 2"
    end
  end
  p self
end
Car.pneu # O receiver é a class Car
Car.pneus
car = Car.new
car.run # Aqui o receiver é o objeto car
car.style