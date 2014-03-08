class Receita
  def initialize(nome, &bloco)
    @nome = nome
    @dados = {
      :preparo => [],
      :ingredientes => {},
      :tempo => nil,
      :porcoes => nil
    }
    instance_eval(&bloco)
  end

  def preparo(instrucao)
    @dados[:preparo] << instrucao
  end

  def ingrediente(nome, quantidade)
    @dados[:ingredientes][nome] = quantidade
  end

  def porcoes(numero)
    @dados[:porcoes] = numero
  end

  def tempo(tempo)
    @dados[:tempo] = tempo
  end

  def to_s
    result = <<-EOF 
    Receita: #{@nome}
    Ingredientes:
    \t#{ @dados[:ingredientes].collect { |n, q| n+", "+q }.join("\n\t") }

    Preparo:
    \t#{ @dados[:preparo].join("\n\t")}

    Tempo de Preparo: #{@dados[:tempo]}
    Porções: #{@dados[:porcoes]}
    EOF
  end
end

def receita(nome, &bloco)
  Receita.new(nome, &bloco)
end

bolo = receita "Bolo de Fubá" do
  porcoes 2
  tempo 2

  preparo     "Misture todos ingrediantes"
  preparo     "Leve ao forno"
  preparo     "Sirva"

  ingrediente "Farinha", "1 kilo"
  ingrediente "Açúcar", "200 gramas"
end

print bolo