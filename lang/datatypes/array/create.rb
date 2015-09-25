
# [Array, Enumerable, Object, Kernel, BasicObject]

ar = []
ar = Array.new
# cria com 5 elementos nil
ar = Array.new 5
# cria com 5 elementos 'a'
ar = Array.new 5, "a"
# cria com 4 elements personalizados
ar = Array.new(4){|index| index ** 2}
#array de string
ar = %w{ a b c d }
#array de simbolos
ar = %i{ a b c d }
