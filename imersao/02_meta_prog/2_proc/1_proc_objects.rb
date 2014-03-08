block1 = lambda {|i| i + 1}
p block1.call 10

block2 = Proc.new {|i| i + 1}
p block2.call 10

def block_maker(&block)
  block
end

block3 = block_maker {|i| i+1 }
p block3.call 10
