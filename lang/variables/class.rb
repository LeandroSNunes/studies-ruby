class Car
	@@wheel = 4

	def wheel=(num)
		@@wheel = num
	end

	p defined? @@wheel
end

class Fiat < Car
	def wheel
		@@wheel
	end
end

class Ford < Car
	def wheel
		@@wheel
	end	
end

fiat = Fiat.new
ford = Ford.new

puts fiat.wheel
puts ford.wheel


fiat.wheel = 5
puts fiat.wheel
puts ford.wheel