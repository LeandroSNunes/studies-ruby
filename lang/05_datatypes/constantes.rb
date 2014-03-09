#Constante começa com a primeira letra maiuscula
Developer = "Leandro"

#Por convençao utiliza-se a palavra toda em maiuscula
DESENVOLVEDOR = "Leandro"
#puts "Developer = #{Developer} - Desenvolvedor = #{DESENVOLVEDOR}"

#é possivel alterar uma constante, mais será informado um aviso
#Developer = "Nunes"
#puts "Developer = #{Developer} - Desenvouvedor = #{DESENVOLVEDOR}"


# Constantes pre-definidas
puts ENV
puts RUBY_PLATFORM
puts RUBY_RELEASE_DATE
puts RUBY_VERSION     
puts RUBY_ENGINE

#Constantes em classes
class Dev
	NOME = "Leandro"
end

puts Dev::NOME

p __LINE__
p __FILE__
