# Variavel local

nome = "Leandro"

class Carro
  
  motor = "V8"

  def contagiro(velocidade)
    mult = 1000
    velocidade * mult
  end

  puts motor
end

car = Carro.new
puts car.contagiro 40
