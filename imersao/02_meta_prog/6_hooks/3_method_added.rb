class SuperHero
  def self.method_added(method)
    puts "novo método #{method}"
  end

  def initialize(name, powers, codename)
    @name, @powers, @codename = name, powers, codename
  end

  def name
    @name
  end

  def powers
    @powers
  end

  define_method(:codename) { @codename }
end