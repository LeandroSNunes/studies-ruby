=begin
immediate values, que são tipos de dados apontados por variáveis que armazenam seus valores na própria
referência e não em um objeto que teve memória alocada para ser utilizado
=end


Fixnum.ancestors
#=> [Fixnum, Integer, Numeric, Comparable, Object, Kernel, BasicObject]

a = 70000
puts a.class

# deixar o número literal mais legível
a = 70_000
puts a.class
