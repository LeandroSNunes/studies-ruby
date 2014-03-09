# classes sao simples constantes
# 
# class Person; end
# p defined? Person

myclass = Class.new
p myclass.name #a classe so recebe o nome de uma constante
Myclass = Class.new
p Myclass.name


Person = Class.new do
  def name
    "Leandro Nunes"
  end
  
  def self.idade
    32
  end
end
p Person.new.name
p Person.idade

p Person.singleton_methods

p Person.superclass
