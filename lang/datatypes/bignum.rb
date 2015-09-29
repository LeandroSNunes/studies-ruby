=begin
os Bignums alocam memória, diferentemente dos Fixnums e outros tipos que são immediate values!
=end

Bignum.ancestors
#=> [Bignum, Integer, Numeric, Comparable, Object, Kernel, BasicObject]

a = 7000000000000000000
b = 7_000_000_000_000_000_000
puts a.class
