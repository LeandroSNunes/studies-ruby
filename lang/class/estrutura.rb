# encoding: utf-8

# Criação
class Teste
end
tes = Teste.new
puts tes.class
p tes.methods.sort
puts tes.to_s


class Celular
  #constantes
	TECLAS = 30 
	
	#variavel de class
	@@visor = "digital" 
  
	attr_reader :marca

  # construtor
	def initialize(marca, cor)
		@marca, @cor = marca, cor
	end

  # metodo de classe
	def self.desligar
		true
	end

  # metodo de instancia
	def discar(numero)
		"Discando o numero #{numero}"
	end
	
	def visor
		@@visor
	end

end


# Injetando method a uma class
def Celular.to_s
	"metodo dinamico"
end

p defined? Celular
cel = Celular.new("motorola", "vermelho")
p cel.visor
p Celular.to_s


