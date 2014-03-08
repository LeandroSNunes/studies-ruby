class Human
  class << self
    attr_accessor :population
  end

end



Human.population = 6_800_000_000
p Human.population

