block = Proc.new {|a,b,c| [a,b,c] }
p block.call(1,2,3,4)
p block.call(1,2)

block = lambda {|a,b,c| [a,b,c] }
p block.call 1,2,3
p block.call 1,2,3,4
p block.call 1,2

def proc_return
  puts "starting something"
  prok = Proc.new { return }
  prok.call
  puts "finishing something"
end

proc_return

def lambda_return
  puts "starting something"
  lmbd = lambda { return }
  lmbd.call
  puts "finishing something"
end

lambda_return

