#encoding: utf-8
#todos os metodos aceitem bloco
#Nao da pra passar mais de um bloco como argumento

#4 metodos de utilizar blocos (lambda, Proc.new, proc, &block)

#->usando o yield

#->passar blocos entre methods usando & (& chama lambda na pratica)

#->closure


## NOVA SINTAXE PARA LAMBDA
#x = -> { puts "Fazendo Lambda!" }
#x.call
## parametros
#x = ->l, s { puts "#{l.capitalize} is #{s}!" }
#x.call(:ruby, :beautiful)   

#x = ->(l, s=:test) { puts "#{l.capitalize} is #{s}!" }
#x.call(:ruby, :beautiful)

## formas para executar
#x = ->(a) { puts "Hello #{a}!" }
#x.call("world")
#x.("world")
#x["world"]


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
