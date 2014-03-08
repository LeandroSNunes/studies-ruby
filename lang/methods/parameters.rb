def saysomething(name)
	puts "Hello #{name}"
end
saysomething "Leandro"


#def saysomething(name, last_name)
#	puts "Hello #{name} #{last_name}" 
#end
#saysomething "Leandro", "Nunes"


def saysomething(name, last_name = "Nunes")
	puts "Hello #{name} #{last_name}"
end
saysomething "Leandro"


def saysomething(*name)  
	puts "Hello #{name.first} #{name.last}"
end
saysomething "Leandro", "Nunes"


def saysomething(*name)  
	puts "First: #{name.first} - Last: #{name.last}"
end
saysomething "Leandro", nome: "Paulo", idade: 30
