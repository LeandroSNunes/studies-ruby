# O retorno de qualquer métodos sempre será a última instrução de código
# “Parâmetros são as variáveis situadas na assinatura de um método;
# Argumentos são os valores atribuídos aos parâmetros”

def saysomething()
	puts "Hello"
end
saysomething


def saysomething
	puts "Hello"
end
saysomething

# pode-se retornar mais de um resultado, na verdade um objeto de coleção
def cinco_multiplos(numero)
  (1..5).map {|valor| valor*numero}
end

v1,v2,v3,v4,v5 = cinco_multiplos(5)
puts "#{v1},#{v2},#{v3},#{v4},#{v5}


