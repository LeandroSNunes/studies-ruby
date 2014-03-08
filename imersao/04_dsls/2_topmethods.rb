# DSL: Top-level method
# DSL para montagem de eventos

class Event < Struct.new(:name)
  [:organizador, :data, :descricao].each do |p|
    class_eval %{
      def #{p}(value)
        @#{p} = value
      end
    }
  end
  
  def to_s
    "Evento: #{name} \nOrganizado por #{@organizador}, #{@descricao}"
  end
end

lambda {
  events = []
  
  Kernel.send :define_method, :evento do |name, &block| 
    event = Event.new(name)
    block.call(event)
    events << event
  end

  Kernel.send :define_method, :gerar_calendario do
    events.each do |e|
      puts e
      puts "---------------------------------------------------------"
    end
  end

}.call

evento "Rails For Kids" do |e|
  e.organizador "Carlos Edudardo"
  e.data "12/09/2009"
  e.descricao "O Rails for Kids foi uma maratona de palestras on-line realizado no dia 12/09/2009."
end

evento "Rails Summit" do |e|
  e.organizador "Akita"
  e.data "12/09/2010"
  e.descricao "Maior evento da america latina sobre Ruby e Rails. Trazendo para o Brasil grandes nomes da comunidade internacional."
end

evento "Rails no mundo real" do |e|
  e.organizador "Guru-SP"
  e.data "29/05/2010"
  e.descricao "Saiba como profissionais de Ruby on Rails tem utilizado a tecnologia em seus projetos reais."
end

gerar_calendario