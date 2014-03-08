class Character
  @available_plans = []
  
  def self.inherited(klass)
    @children ||= []
    @children << klass
  end
  
  def self.for_plan(plans)
    @children.find_all do |c|
      c.available?(plans)
    end
  end
  
  def self.available?(plan)
    @available_plans.include? plan
  end
end

class Elf < Character
  @available_plans = [:junior, :advanced]
  
  def self.available_plans?
    #...
  end
end

class Knight < Character
  @available_plans = [:junior, :advanced, :master]
end

p "Available characters for your plan:"
p Character.for_plan(:master)
