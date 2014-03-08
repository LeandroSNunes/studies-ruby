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