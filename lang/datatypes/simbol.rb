
Symbol.ancestors
#=> [Symbol, Comparable, Object, Kernel, BasicObject]

# Geralmente são utilizados como identificadores, eles são imutáveis, o valor interno não pode ser alterado
# Simbolo possui muitos metodos semelhantes a string
# Nunca são removidos pelo GC
# Não são guardados somente na memória, eles também ficam em um dicionário de símbolos otimizado pelo interpretador
puts :nome.upcase

# É possível fazer comparações de símbolos com expressões regulares

puts :leandro =~ /lea/

# Imutabilidade
p :leandro.object_id == :leandro.object_id
p "leandro".object_id == "leandro".object_id
