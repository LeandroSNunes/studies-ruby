module CanCan
  
  module ControllerAdditions
    module ClassMethods
      # class BooksController < ApplicationController
      #   load_and_authorize_resource
      # end

      def load_and_authorize_resource(options = {})
        ResourceAuthorization.add_before_filter(self, :load_and_authorize_resource, options)
      end

      # class BooksController < ApplicationController
      #   load_resource
      # end
      # 
      def load_resource(options = {})
        ResourceAuthorization.add_before_filter(self, :load_resource, options)
      end
      
      def authorize_resource(options = {})
        ResourceAuthorization.add_before_filter(self, :authorize_resource, options)
      end
    end
    
    def self.included(base)
      base.extend ClassMethods
      base.helper_method :can?, :cannot?
    end
    
    def authorize!(action, subject, *args)
      message = nil
      if args.last.kind_of?(Hash) && args.last.has_key?(:message)
        message = args.pop[:message]
      end
      raise AccessDenied.new(message, action, subject) if cannot?(action, subject, *args)
    end
    
    def unauthorized!(message = nil)
      raise ImplementationRemoved, "The unauthorized! method has been removed from CanCan, use authorize! instead."
    end
    
    def current_ability
      @current_ability ||= ::Ability.new(current_user)
    end
    
    # <% if can? :create, Project %>
    #   <%= link_to "New Project", new_project_path %>
    # <% end %>
    def can?(*args)
      current_ability.can?(*args)
    end
    
    def cannot?(*args)
      current_ability.cannot?(*args)
    end
  end
end

if defined? ActionController
  ActionController::Base.class_eval do
    include CanCan::ControllerAdditions
  end
end
