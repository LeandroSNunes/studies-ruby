module Census
  def population
    6_800_000_000
  end
end

class Human
  extend Census
end

Human.population