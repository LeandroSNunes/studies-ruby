class Person
	attr_accessor :name, :age
	def initialize(name,age)
		@name = name
		@age = age
	end
end

class Professor < Person
end

class Aluno < Person
end

pro = Professor.new("Leandro",32)
alu = Aluno.new("Pedro",20)

puts "Professor #{pro.name}, Idade: #{pro.age}"
puts "Aluno #{alu.name}, Idade: #{alu.age}"

# ver o super
