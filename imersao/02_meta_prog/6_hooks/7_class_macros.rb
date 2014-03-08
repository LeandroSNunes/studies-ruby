class User < ActiveRecord::Base
  devise :database_authenticatable, :confirmable, :recoverable, :rememberable, :trackable, :validatable
end

module Devise
  module Models
    def devise(*modules)
      raise "You need to give at least one Devise module" if modules.empty?
      options = modules.extract_options!

      # ... compatibilidade

      @devise_modules = Devise::ALL & modules.map(&:to_sym).uniq

      devise_modules_hook! do
        @devise_modules.each { |m| include Devise::Models.const_get(m.to_s.classify) }
        options.each { |key, value| send(:"#{key}=", value) }
      end
    end
  end
end


module Devise
  module Models

    module Validatable
      # All validations used by this module.
      VALIDATIONS = [ :validates_presence_of, :validates_uniqueness_of, :validates_format_of,
                      :validates_confirmation_of, :validates_length_of ].freeze

      def self.included(base)
        base.extend ClassMethods
        assert_validations_api!(base)

        base.class_eval do
          validates_presence_of   :email
          validates_uniqueness_of :email, :scope => authentication_keys[1..-1], :allow_blank => true
          validates_format_of     :email, :with  => email_regexp, :allow_blank => true

          with_options :if => :password_required? do |v|
            v.validates_presence_of     :password
            v.validates_confirmation_of :password
            v.validates_length_of       :password, :within => password_length, :allow_blank => true
          end
        end
      end

      def self.assert_validations_api!(base) #:nodoc:
        unavailable_validations = VALIDATIONS.select { |v| !base.respond_to?(v) }

        unless unavailable_validations.empty?
          raise "Could not use :validatable module since #{base} does not respond " <<
                "to the following methods: #{unavailable_validations.to_sentence}."
        end
      end

    protected

      # ...

      module ClassMethods
        Devise::Models.config(self, :email_regexp, :password_length)
      end
    end
  end
end