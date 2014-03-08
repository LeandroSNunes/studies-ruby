require "fiber"

f = Fiber.new do
  #loop do
    #n = rand(100)
    #Fiber.yield(n)
  #end
end
p f.resume 