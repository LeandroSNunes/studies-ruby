# Strong Typing
# No Ruby o tipo é determinante para o sucesso da operação
=begin
Linguagens implementadas com tipos de dados fortes, tais como Java e Pascal, exigem que o tipo de dado de um valor seja do mesmo tipo da
variável ao qual este valor será atribuído.
=end


valor_diaria = 20
dias = "30"

p valor_diaria * dias
# TypeError: String can't be coerced into Fixnum
