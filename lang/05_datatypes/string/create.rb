str = String.new("Leandro Souza Nunes")
puts str

str = "Leandro Nunes"
puts str

str = %{Leandro Nunes}
puts str

str = %~Leandro "dev" Nunes 'aspas'~
puts str

#aspas duplas
str = %Q|Leandro Nunes|
puts str

#aspas simples
str = %q/Leandro Nunes/
puts str

puts "Leandro Nunes".class.ancestors
# [String, Comparable, Object, Kernel, BasicObject]
