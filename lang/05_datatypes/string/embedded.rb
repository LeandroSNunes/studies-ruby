#expansão de variáveis

work = "estudando"
puts "O que voce esta fazendo agora? #{work}"
puts %Q[O que voce esta fazendo agora 2? #{work}]

# aspas simples não imprime
puts 'O que voce esta fazendo agora? #{work}'
puts %q[O que voce esta fazendo agora 2? #{work}]
