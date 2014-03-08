# Simbolo possui muitos metodos semelhantes a string
puts :nome.upcase

# É possível fazer comparações de símbolos com expressões regulares
  
puts :leandro =~ /lea/

#converte simbolos em Procs
letters = ["a", "b", "c"]
puts letters.collect!(&:upcase).inspect