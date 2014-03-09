# uma forma de se escrever uma quantidade enorme de texto sem precisar de concatenação
# permite especificar os delimitadores

str = <<TEXTO
ljsdfjs dfjsadf jsf sdf sfja fjas
fasdfas fjslfjs dflas fj fasdfl f
fals fja
TEXTO
puts str


#Com Identação
str = <<-TEXTO
			ljsdfjs dfjsadf jsf sdf sfja fjas
		  fasdfas fjslfjs dflas fj fasdfl f
 		  fals fja
	    TEXTO
puts str
