# Geralmente são utilizados como identificadores, eles são imutáveis
# Simbolo possui muitos metodos semelhantes a string
# Nunca são removidos pelo GC
puts :nome.upcase

# É possível fazer comparações de símbolos com expressões regulares
  
puts :leandro =~ /lea/

# Imutabilidade
p :leandro.object_id == :leandro.object_id
p "leandro".object_id == "leandro".object_id
