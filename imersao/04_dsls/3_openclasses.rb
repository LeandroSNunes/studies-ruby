# DSL: Top-level methods
# Problema: DSL para cálculos com Tempo no Rails
require 'active_support/core_ext'

p 1.hour.ago
p 1.day.from_now + 2.days

####
## Numeric
####

require 'active_support/duration'
class Numeric
  def seconds
    ActiveSupport::Duration.new(self, [[:seconds, self]])
  end
  alias :second :seconds

  def minutes
    ActiveSupport::Duration.new(self * 60, [[:seconds, self * 60]])
  end
  alias :minute :minutes  
  
  def hours
    ActiveSupport::Duration.new(self * 3600, [[:seconds, self * 3600]])
  end
  alias :hour :hours
  
  def days
    ActiveSupport::Duration.new(self * 24.hours, [[:days, self]])
  end
  alias :day :days

  def weeks
    ActiveSupport::Duration.new(self * 7.days, [[:days, self * 7]])
  end
  alias :week :weeks
  
  def fortnights
    ActiveSupport::Duration.new(self * 2.weeks, [[:days, self * 14]])
  end
  alias :fortnight :fortnights
  
  # Reads best without arguments:  10.minutes.ago
  def ago(time = ::Time.now)
    time - self
  end

  # Reads best with argument:  10.minutes.until(time)
  alias :until :ago

  # Reads best with argument:  10.minutes.since(time)
  def since(time = ::Time.now)
    time + self
  end

  # Reads best without arguments:  10.minutes.from_now
  alias :from_now :since
end

####
## DURATION
####
require 'active_support/basic_object'
require 'active_support/core_ext/array/conversions'
require 'active_support/core_ext/object/acts_like'

module ActiveSupport
  # Provides accurate date and time measurements using Date#advance and 
  # Time#advance, respectively. It mainly supports the methods on Numeric,
  # such as in this example:
  #
  #   1.month.ago       # equivalent to Time.now.advance(:months => -1)
  class Duration < BasicObject
    attr_accessor :value, :parts

    def initialize(value, parts) #:nodoc:
      @value, @parts = value, parts
    end

    def +(other)
      if Duration === other
        Duration.new(value + other.value, @parts + other.parts)
      else
        Duration.new(value + other, @parts + [[:seconds, other]])
      end
    end

    def -(other)
      self + (-other)
    end

    def ==(other)
      if Duration === other
        other.value == value
      else
        other == value
      end
    end

    def self.===(other) #:nodoc:
      other.is_a?(Duration)
    rescue ::NoMethodError
      false
    end

    def since(time = ::Time.current)
      sum(1, time)
    end
    alias :from_now :since

    def ago(time = ::Time.current)
      sum(-1, time)
    end
    alias :until :ago

    protected

      def sum(sign, time = ::Time.current) #:nodoc:
        parts.inject(time) do |t,(type,number)|
          if t.acts_like?(:time) || t.acts_like?(:date)
            if type == :seconds
              t.since(sign * number)
            else
              t.advance(type => sign * number)
            end
          else
            raise ::ArgumentError, "expected a time or date, got #{time.inspect}"
          end
        end
      end

    private

      def method_missing(method, *args, &block) #:nodoc:
        value.send(method, *args)
      end
  end
end
