class Leandro
	def fala
		"estou falando..."
	end
end
pes = Leandro::new
p pes.fala

#tudo é objeto
#p 10.class
#p "leandro".class
#p true.class


#tap executa um bloco, passando um objeto como parâmetro
#langs = [].tap do |a|
#    a << "Ruby"
#    a << "Python"
#    a << "PHP"
#end
#puts langs

