# Rails 3.0
# activerecord/lib/active_record/named_scope.rb

def scope(name, scope_options = {}, &block)
  name = name.to_sym

  # checa sobreescrita
  if !scopes[name] && respond_to?(name, true)
    logger.warn "Creating scope :#{name}. " \
                "Overwriting existing method #{self.name}.#{name}."
  end

  
  scopes[name] = lambda do |*args|
    options = scope_options.is_a?(Proc) ? scope_options.call(*args) : scope_options

    relation = scoped # escopo anonimo
    relation = options.is_a?(Hash) ? relation.apply_finder_options(options) : scoped.merge(options) if options
    block_given? ? relation.extending(Module.new(&block)) : relation
  end

  # abre a singleton class do model
  singleton_class.instance_eval do
    define_method name do |*args|
      scopes[name].call(*args)
    end
  end
end
