##variaveis Globais
$var_global = "Leandro"
puts $var_global

class Carro
  def dono
    $var_global
  end
end

car = Carro.new
puts car.dono


#Variaveis globais pre-definadas
# puts "ID do processo:#{$$}; programa em execucao:#{$0}"
