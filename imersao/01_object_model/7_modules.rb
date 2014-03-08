module Dancer
  def dance; puts %(\\o/ _o_ \\o/) end
end

module Bilau
  class Pinto
    def xixi
      "......."
    end
  end
end

class Human
  include Dancer
  include Bilau
  # ...
end

joao = Human.new
joao.dance
p joao.methods.sort 

p joao.class.ancestors
