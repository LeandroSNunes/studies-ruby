# immediate value

FalseClass.ancestors
#=> [FalseClass, Object, Kernel, BasicObject]

boolean = 1 > 2
puts boolean.kind_of? FalseClass
puts boolean.class


puts false.kind_of? FalseClass
puts false.class
