class Human
  def walk(steps) ; @steps = steps end
  def run ; "start run after #{@steps} steps" end
end

joao = Human.new
joao.walk 5


def joao.talk
  "and talk after #{@steps} steps"
end

p joao.talk




