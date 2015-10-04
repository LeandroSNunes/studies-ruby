class Pessoa
  attr_reader :nome, :idade
  def initialize(nome, idade)
    @nome = nome
    @idade = idade
  end
end

pessoas = [
  Pessoa.new("Leandro", 34),
  Pessoa.new("Jose", 20),
  Pessoa.new("Maria", 45),
  Pessoa.new("Joao", 14)
]

def list_pessoas(pessoas)
  pessoas.each do |pessoa|
    yield pessoa if block_given?
  end
end

# o caracter & indica que estamos recebendo uma instancia de Proc
def list_pessoas(pessoas, &block)
  pessoas.each do |pessoa|
    block.call pessoa if block_given?
  end
end

# passar o bloco de forma convencional e como parametro
# criar um objeto Proc e passar varias vezes a varios metodos
# o return dentro do Proc infere no comportamento onde foi chamado, na lambda nao
# Ruby nao aceita parametros com return inplicito como o Proc, é possivel usar lambda


# o argumento bloco é indicado por & e deve vim por último
def my_method(&my_block)
  my_block.call(self)
end

# passando para outro metodo
def each_item(&block)
  @items.each(&block)
end

# chamando o bloco
def my_method
  yield self
end
