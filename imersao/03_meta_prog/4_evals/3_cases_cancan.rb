# CanCan 
# class_eval - estendendo classes em runtime
# cancan/lib/cancan/controller_additions.rb

module CanCan
  
  module ControllerAdditions

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
