=begin
  classe Enumerable
=end

# each
[1,2,3,4,5].each {|e| puts "o array contem o numero #{e}"}
# usando Range
(1..5).each {|e| puts "o array contem o numero #{e}"}

#times
5.times {|e| puts "o array contem o numero #{e}"}

# com intervalos
(1..30).step(3).each {|e| puts "o array contem o numero #{e}"}

# selecionando elementos
(1..10).select {|e| e.even?}
{1=>"um",2=>"dois",3=>"tres"}.select {|chave,valor| valor.length>2}

# rejeitando valores
(0..10).reject {|valor| valor.even?}

# map
(0..10).map {|valor| valor*2}
{1=>"um",2=>"dois",3=>"tres"}.map {|chave,valor| "numero #{valor}" }


# detectar se todos os elementos atendem a um acondição
(0..10).all? {|valor| valor>1}

# max
(0..10).max
%w(joao maria antonio).max {|elemento1,elemento2| elemento1.length <=> elemento2.length}

# min
(0..10).min
“%w(joao maria antonio).min {|elemento1,elemento2| elemento1.length <=> elemento2.length}”

# acumulando valores
(0..10).inject {|soma,valor| soma+valor}
(0..10).inject(:+)

# dividir um vetor através de uma condição
(0..10).partition {|valor| valor.even?}

# ordenação
%w(joao maria antonio).sort
%w(antonio maria joao).sort_by {|nome| nome.length}

# combinando elementos
(1..10).zip((11..20))
["john", "paul", "george", "ringo"].combination(2)
["john", "paul", "george", "ringo"].permutation(2)

beatles = %w(john paul george ringo)
stooges = %w(moe larry curly shemp)
beatles.product(stooges)

# percorrendo valores para cima e para baixo
1.upto(5) {|num| print num," "}
5.downto(1) {|num| print num," "}
1.step(10,2) {|num| print num," "}

