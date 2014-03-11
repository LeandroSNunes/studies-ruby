
class Phone  
end

# CLASSES DINAMICAS
Tablet = Class.new
p Tablet.ancestors


Mobile = Class.new(Phone)
p Mobile.ancestors
