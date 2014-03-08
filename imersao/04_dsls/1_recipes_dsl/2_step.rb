class Receita
  def initialize(nome)
    @nome = nome
    @dados = {
      :preparo => [],
      :ingredientes => {},
      :tempo => nil,
      :porcoes => nil
    }
    yield self
    self
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
end

receita = Receita.new("Bolo") do |r|
  r.porcoes 2
  r.tempo 2
  r.ingrediente "Farinha", "1 kilo"
  r.ingrediente "Açúcar", "200 gramas"
end