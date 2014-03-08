# GET
class Person
	attr_reader :name, :age
	def initialize(name,age)
		@name = name
		@age = age
	end
end

# SET
class Person
	attr_writer :name, :age
	def initialize(name,age)
		@name = name
		@age = age
	end
end

# GET / SET
class Person
	attr_accessor :name, :age
	def initialize(name,age)
		@name = name
		@age = age
	end
end