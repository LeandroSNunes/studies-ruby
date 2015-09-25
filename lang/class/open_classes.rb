# Efeturar o plural de palavras

def plural(palavra)
  "#{palavra}s"
end

p plural "canetas"
p plural "carros"

# Já que é um metodo para strings, deveria ser assim:
p "canetas".plural

# Vamos imbutir o metodos dentro do objeto String
class String

  def plural
    "#{self}s"
  end

end


p "canetas".plural
