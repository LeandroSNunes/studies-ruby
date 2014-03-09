# Uma forma de agrupar methodos
# Criar namespace
# Simular herança multipla

module Automovel
	def self.ligar
		"ligando automovel"
	end
	
	def desligar
	  "desligando automovel"
	end
	# Criando funcao de modulo (method static)
	module_function :desligar
end

module Telefone
	def ligar
		"ligando celular"
	end
end

# include ---> Atribui os metodos nas instancias das classes
# extend ---> Atribui os metodos na classe

class Celular
	include Telefone
	
	## Funcao metodo
	def Celular.desliga
	  "Desligando ....."
	end
end

# 
# p Automovel.ligar
# cel = Celular.new
# p cel.ligar


p Automovel.desligar