class Pessoa
  attr_reader :nome, :idade
  def initialize(nome, idade)
    @nome = nome
    @idade = idade
  end
end

num = [1,2,3,4,5]
pessoas = [
  Pessoa.new("Leandro", 34),
  Pessoa.new("Jose", 20),
  Pessoa.new("Maria", 45),
  Pessoa.new("Joao", 14)
]

# o indice começa a partir do zero
puts num[0]
puts num.first
puts num.last

# add novo elemento
num << "texto"
p num

# Inject
# somar todas as idades
soma = 0
pessoas.each{ |pessoa| soma += pessoa.idade }
puts soma
# ou
puts pessoas.inject(0){ |soma, pessoa| soma += pessoa.idade }

# Map / Collect
# nome de todos
nomes = []
pessoas.each{ |pessoa| nomes << pessoa.nome }
puts nomes
# ou
puts pessoas.map{ |pessoa| pessoa.nome }
# ou
puts pessoas.map &:nome


