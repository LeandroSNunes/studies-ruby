module InheritedResources
  # class MyController < InheritedResources::Base
  #   create! do |success, failure|
  #     success.html { render :text => "It works!" }
  #   end
  # end
  
  module DSL
    def self.included(base)
      ACTIONS.each do |action|
        base.class_eval <<-WRITTER
          def self.#{action}!(options={}, &block)
            define_method :__#{action}, &block
            class_eval <<-ACTION
              def #{action}
                super(\#{options.inspect}, &method(:__#{action}))
              end
            ACTION
          end
        WRITTER
      end
    end
  end
end

# module InheritedResources
#   # Allows controllers to write actions using a class method DSL.
#   #
#   #   class MyController < InheritedResources::Base
#   #     create! do |success, failure|
#   #       success.html { render :text => "It works!" }
#   #     end
#   #   end
#   #
#   module DSL
#     # Hook de inclusão
#     def self.included(base)
#       # loop nas actions do controller
#       ACTIONS.each do |action|
#         # abre a classe do controller
#         base.class_eval <<-WRITTER
#           # cria os métodos de classe como o create! do exemplo
#           def self.#{action}!(options={}, &block)
#             # cria um metodo  auxiliar para action com o bloco como conteudo
#             define_method :__#{action}, &block
#             
#             # cria a action como método de instancia no controller
#             class_eval <<-ACTION
#               def #{action}
#                 super(\#{options.inspect}, &method(:__#{action}))
#               end
#             ACTION
#           end
#         WRITTER
#       end
#     end
#   end
# end
