# Todas variáveis de instancia criada é privada
class Person

  def initialize(name)
    @name = name
    self.class.count = 4
  end
  
  def self.count=(num)
    @count = num
  end
  
  def self.count
    @count
  end

  def name
    @name
  end
  
end

Person.count = 3
pe = Person.new "Leandro"
## Na instancia da Class
p  pe.class.count
## Na instancia do Objeto
p pe.name


# Exemplo de instance_variable_get e instance_variable_set 
