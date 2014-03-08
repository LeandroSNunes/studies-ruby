module Marvel
  AUTHOR = "Stan Lee"
end

class SuperHero
  include Marvel

  def initialize(name, *powers)
    @name, @powers = name, powers
  end

  def fight
    "Fight with your powers: #{powers.join(',')}"
  end

end

@ironman = SuperHero.new("Tony Stark", :fly, :infrared, :speed )

puts @ironman.class
puts @ironman.instance_variables
puts @ironman.public_methods
puts SuperHero.included_modules
