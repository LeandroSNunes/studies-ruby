#As classes Date, DateTime e Time fazem parte da ST
require "date"
date = Date.parse("27/01/2012")
puts date.to_s
puts date.friday?