
=begin
## Funcoes de alta orderm - Higher-order funcions

- Todos os metodos aceitem bloco
- Nao da pra passar mais de um bloco como argumento
- Maneiras de utilizar blocos (lambda, Proc.new, proc, &block)
- lambdas são conhecidas como funcoes anonimas
- lambdas faz checkagem de parametros

=end

#->usando o yield
#->passar blocos entre methods usando & (& chama lambda na pratica)
#->closure

Proc.ancestors
#=> [Proc, Object, Kernel, BasicObject]

# LAMBDA definicao
x = lanbda{ puts "Fazendo Lambda!" }
x = -> { puts "Fazendo Lambda!" }

# parametros
x = ->l, s { puts "#{l.capitalize} is #{s}!" }
x.call(:ruby, :beautiful)   

x = ->(l, s=:test) { puts "#{l.capitalize} is #{s}!" }
x.call(:ruby, :beautiful)

## formas para executar
x = ->(a) { puts "Hello #{a}!" }
x.call("world")
x.("world")
x["world"]

# Currying











class Tabs
  @@config = {}

  def set_config(name, options={})
    @@config[name] = options
  end

  def self.config
    @@config
  end

  def method_missing(item,args={},&block)
    @@config[item] = args	
  end

end

#class Nav < Tabs

#	def dados
#		@@config[:leandro] = "developer"
#		@@config
#	end

#end

def config(&b)
  b.call
end


config do |item|
  item.dashboards title:"Area de trabalho", path: :admin_dashboard_path, dropdown: {
    user: {title:"Usuários", path: :admin_users_path}
  }
  #item :users, title:"Usuários", path: :admin_users_path
end

p Tabs.config


config do |teste|

end

a = --> || do

end
