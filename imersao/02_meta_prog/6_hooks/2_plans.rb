class Character
  @available_plans = []

  def self.inherited(klass)
    @children ||= []
    @children << klass
  end

  def self.for_plan(condition)
    @children.find_all do |c|
      c.available?(condition)
    end
  end

  def self.available?(plan)
    @available_plans.include? plan
  end
end

class Elf < Character
  @available_plans = [:junior, :advanced, :master]
end

class Kgnight < Character
  @available_plans = [:advanced, :master]
end

p "Available characters for your plan:"
p Character.for_plan :master