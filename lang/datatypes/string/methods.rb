str = "Leandro Nunes"
##lIMPAR STRING
# str1.clear
# puts str1

##Repeticao
puts "Bla " * 5

##Concatena
puts "leandro ".concate("Nunes")
puts "Leandro " + "Nunes"
puts "Leandro " << "Nunes" #realoca memória

##Os métodos each_* possuem equivalentes como line, char, byte e codepoint.
str.each_line{ |s| puts s }
puts "leandro Nunes".each_codepoint.to_a.inspect

# Converte a primeira letra para maiuscula
puts str.capitalize

puts str.downcase

puts str.upcase

puts str.delete "dr"

# Verifica se possui tamnho 0
puts "".empty?

# Verifica se termina com a string informada
puts str.end_with?("Nunes")

# Verifica se inicia com a string informada
puts str.start_with?("Leandro")

# replace global
puts str.gsub(/Nunes/, "Souza")

# replace a primeria ocorrencia
puts str.sub(/Nunes/, "Souza")

# substitui
puts "Leandro".replace("eu")

# verifica se inclui a string
puts str.includei?("Leandro")

# insere na posição informada
puts str.insert(8, "Souza ")

# divite
puts str.split
puts str.split(/ /)
