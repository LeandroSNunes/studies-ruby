Myapp::Application.routes.draw do |map|
  resources :products do
    member do
      get :short
      post :toggle
    end

    collection do
      get :sold
    end
  end
end

module ActionDispatch
  module Routing
    class RouteSet

      class Dispatcher
        ...
      end

      class NamedRouteCollection #:nodoc:
        ...
      end


      def initialize(request_class = ActionDispatch::Request)
        ...
      end

      def draw(&block)
        clear! unless @disable_clear_and_finalize

        mapper = Mapper.new(self) # Proxy Object
        if block.arity == 1
          mapper.instance_exec(DeprecatedMapper.new(self), &block)
        else
          mapper.instance_exec(&block)
        end

        finalize! unless @disable_clear_and_finalize

        nil
      end

    end
  end
end

require 'active_support/core_ext/hash/except'
require 'active_support/core_ext/object/blank'

module ActionDispatch
  module Routing
    class Mapper

      module Resources
        CRUD_ACTIONS = [:index, :show, :create, :update, :destroy] #:nodoc:

        class Resource #:nodoc:
          ...
        end

        class SingletonResource < Resource #:nodoc:
          ...
        end

        def resource(*resources, &block)
          ...
        end

        def resources(*resources, &block)
          ...
        end

        def collection
          ...
        end

        def member
          ...
        end

        def nested
          ...
        end
        
        def match(*args)
          ...
        end
        
      end

      include Base
      include HttpHelpers
      include Scoping
      include Resources
    end
  end
end
