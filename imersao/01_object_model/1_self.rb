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

me = Human.new
me.walk(4)

p self
