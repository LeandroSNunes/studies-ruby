# class_eval == module_eval
# class_eval apenas classes

class SuperHero
end

SuperHero.class_eval do
  def fight!
    "pow!! bang?! pow!"
  end
end

SuperHero.instance_eval do
  def have_powers?
    true
  end
end

@batman = SuperHero.new
puts @batman.fight!

puts SuperHero.have_powers?