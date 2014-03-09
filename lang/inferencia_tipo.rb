=begin
O interpretador infere o tipo da variável automaticamente durante a execução do código.
=end

# Ex:
a = 1
p a.kind_of? Fixnum
p a.class

a = "Leandro"
p a.kind_of? String
p a.class
