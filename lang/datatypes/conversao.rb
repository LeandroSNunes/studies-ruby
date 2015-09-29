# Fixnum para Float
1.to_f #=> 1.0

# Fixnum para String
1.to_s #=> "1"

# String para Fixnum
"1".to_i #=> 1

# String para flutuante
"1".to_f #=> 1.0

# String para símbolo
"azul".to_sym #=> :azul

# Array para String
[1,2,3,4,5].to_s #=> "12345"

# Array para String, com delimitador
[1,2,3,4,5].join(",") #=> "1,2,3,4,5"

# Range para Array
(0..10).to_a #=> [0,1,2,3,4,5,6,7,8,9,10]

# Hash para Array
{:john=>"guitarra e voz"}.to_a #=>[[:john,"guitarra e voz"]]”
