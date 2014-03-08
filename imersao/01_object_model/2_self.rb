p self

class Human
  p self
  def walk(steps)
    p self
    @steps = steps
    run
  end
  
  def run
    p self
    p "start run after #{@steps} steps"
  end
  p self
end

joao = Human.new
joao.walk(4)
p self