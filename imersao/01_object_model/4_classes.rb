h = class Human
  self
end

#joao = h.new
#p joao.class

 h = Class.new
 p h.class
 
 joao = h.new
 p joao.class
 
 Human = h
 joao = Human.new
 p joao.class
 
# p defined? Human
# p self.class.constants
