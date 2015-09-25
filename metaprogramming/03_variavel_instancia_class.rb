# variaveis de instancias denotadas:
# @my_var

# variaveis de class, denotadas:
# @@my_var

class Car
  @@num_roda = 4 # variavel de class inserida na SingletonClass
  def self.num_roda
    @@num_roda # variaveis de classe nao sao acessadas diretamete, é preciso criar um metodo
  end
  
  def initialize
    @num_porta = 2 # variavel de instancia
  end
  
  def num_porta
    @num_porta
  end
  
end

p Car.num_roda
p Car.new.num_porta

