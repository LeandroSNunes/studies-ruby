#convertendo Objetos para hasg

class Config 
   def initialize(text)
      @text = text
   end           
   
   def to_hash
     result = {}
     @text.to_s.scan(/^(\w+) *= *(\d+)$/sim) do |name, value|
       result[name] = value
     end
   result
   end 
end

config = Config.new %(a = 1\nb = 2\nc = 3)
puts Hash.try_convert(config)