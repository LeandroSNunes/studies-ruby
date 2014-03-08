module Census
  def population
    6_800_000_000
  end
end

class Human
  class << self
    include Census
  end
end

Human.population