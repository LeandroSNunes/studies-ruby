def saysomething(name)
	puts "Hello #{name}"
end
saysomething "Leandro"


def saysomething(name, last_name)
	puts "Hello #{name} #{last_name}"
end
saysomething "Leandro", "Nunes"


def saysomething(name, last_name = "Nunes")
	puts "Hello #{name} #{last_name}"
end
saysomething "Leandro"

# * splat
def saysomething(*name)
	puts "Hello #{name.first} #{name.last}"
end
saysomething "Leandro", "Nunes"


def saysomething(*name)
	puts "First: #{name.first} - Last: #{name.last}"
end
saysomething "Leandro", nome: "Paulo", idade: 30

# Keyword Arguments
def add_values(first: 1, second: 2)
  first + second
end

def gather_arguments(first: nil, **rest)
  p first, rest
end

