# Configuration DSL usando Instantiation DSL's
# Problema Código repetitivo:

# Delayed::Worker.backend = :active_record
# Delayed::Worker.destroy_failed_jobs = false
# Delayed::Worker.sleep_delay  = 20
# Delayed::Worker.max_attempts = 5
# Delayed::Worker.max_run_time = 5.minutes

require 'active_support/core_ext'
module Delayed
  class Worker
    class << self ; attr_accessor :configuration; end

    def self.configure
      self.configuration ||= Configuration.new
      yield(configuration)
    end
  end

  class Configuration
    attr_accessor :backend, :destroy_failed_jobs, :sleep_delay, :max_attempts, :max_run_time
  end
end

Delayed::Worker.configure do |c|
  c.backend = :active_record
  c.destroy_failed_jobs = false
  c.sleep_delay = 20
  c.max_attempts = 5
  c.max_run_time = 5.minutes
end

p Delayed::Worker.configuration