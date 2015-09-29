# operadores lógicos
# !, &&, || e not, and, or


# ||=
preco = nil
preco = 2.00 unless preco

preco = nil
preco ||= 2.00

# ==
# Retorna true se os objetos forem da mesma instancia

# equal?
# similar ao == mas é utilizado pelas bibliotecas da linguagem

# eql?
# similar ao == mas pode ser sobreescrito para se adequar as regras de negócio


# uso do defined? para saber se uma instancia dexiste
a = 1
defined? a
defined? String
