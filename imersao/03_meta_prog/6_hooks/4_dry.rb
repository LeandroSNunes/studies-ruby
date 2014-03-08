require "active_model"

module Manufactured

  def self.included(klass)
    klass.class_eval do
      include ActiveModel::Validations
      extend ClassMethods
      
      attr_accessor :model, :manufacturer, :production_date
      validates_presence_of :model, :manufacturer, :production_date
    end
  end

end

class Car
  include Manufactured
end

class Rocket
  include Manufactured  
end

palio = Car.new
p palio.valid?

nuclear = Rocket.new
p nuclear.valid?