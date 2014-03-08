

class Carro

  # attr_reader :num_rodas
  # attr_writer :num_rodas
  attr_accessor :num_rodas
  @num_rodas = 4
  
  def initialize
    @num_rodas ||= 4
  end
  # 
  # def num_rodas
  #   @num_rodas
  # end
  
  # def self.total_pneus #inserindo na singleton class
  #   @num_rodas + 1
  # end
  
  class << self #abrindo explicitamente a singleton class
    
    def total_pneus
      @num_rodas + 1
    end
    
  end

end

car  = Carro.new
car.num_rodas = 10
p car.num_rodas

def car.num_portas #acessando a singleton class da instancia
  4
end


p car.num_portas
p Carro.total_pneus

p car.singleton_methods
p Carro.singleton_methods


