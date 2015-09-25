=begin
Processo de chamada de methods
1. Na classe do Objeto
2. Na Singleton
3. Na hierarquia da class
=end

print "main: "
p self.class.ancestors

print "String: "
p "".class.ancestors


class Teste
end
tes = Teste.new
print "New Class: "
p tes.methods.sort

print "Array: "
p [].class.ancestors
