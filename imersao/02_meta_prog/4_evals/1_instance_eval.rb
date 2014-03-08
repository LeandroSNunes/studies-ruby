# receiver implicito
instance_eval do
  puts self
end

#receiver explicito
self.instance_eval do
  puts self
end

"ruby".instance_eval do
  puts upcase
end

magic = "ruby"
magic.instance_eval do
  gsub!("uby", "ails")
end
puts magic

#=================================

class SuperHero
  attr_accessor :name

  def initialize(nick, name)
    @nick, @name = nick, name
  end

private
  def reveal_identity
    "the superhero #{@name} is #{@nick}"
  end

end

# alterando self
@spiderman = SuperHero.new("Peter Parker", "Spiderman")
@spiderman.instance_eval do
  puts reveal_identity
end

# runtime methods
@superman = SuperHero.new("Clark Kent", "Superman")
@superman.instance_eval do
  def can_fly?
    true
  end
end

puts @superman.can_fly?
# puts @spiderman.can_fly?

# class methods???

SuperHero.instance_eval do
  puts self
  def have_powers?
    true
  end  
end

puts SuperHero.have_powers?