# Em Ruby os valores são transmitidos por referência, a variável armazena referências na memória
#a = "leandro"
#b = a
#puts a.class
#puts "Id de A: #{a.object_id} e id de B: #{b.object_id}"

#Para ter dois objetos distintos sem que tenha a mesma referência a memória pode-se utilizar o método dup
name = "LSN"
outher_name = name.dup
name[1] = 's'
puts outher_name

# Para não permitir que um objeto seja modificado, utilizamos o método freeze
name = "LSN"
name.freeze
name[1] = 's'
# > RuntimeError: can’t modify frozen string
