# O nil não representa uma String vazia ou o número zero, ele representa um valor vazio
# Quando atribuímos nil a uma variável, queremos dizer que ela não possui nenhum valor
# Dentro de condicionais assume o valor de true ou false
NilClass.ancestors
#=> [NilClass, Object, Kernel, BasicObject]

a = nil
puts a.class
