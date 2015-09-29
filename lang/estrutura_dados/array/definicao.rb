
Array.ancestors
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
ar = %W{ a b c d #{1+1} } # permite a interpolacao

#array de simbolos
ar = %i{ a b c d }

# Permite adiciona tipos diferentes
ar = [1,2.3,"oi"]
