# Exemplo Real - Whenever

# every 1.day, :at=>'4:00am' do
#   rake "notify:transactions:in_due_date"
#   rake "notify:schedules:near_to_end"
# end

require 'active_support/core_ext'

module Whenever
  class JobList

    def every(frequency, options = {}, &block)
      @current_time_scope = frequency
      @options = options
      instance_eval &block
    end

    def command(task, options = {})
      puts task
    end

    def runner(task, options = {})
      puts task
    end

    def rake(task, options = {})
      puts task
    end

  end
end

job = Whenever::JobList.new
job.every 1.day, :at=>'4:00am' do
  rake "notify:transactions:in_due_date"
  rake "notify:schedules:near_to_end"
end