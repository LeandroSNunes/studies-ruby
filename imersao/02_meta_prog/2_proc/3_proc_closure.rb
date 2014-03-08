def action
  "The action is: #{yield}"
end

employee  = "Marcos Antunes"
boss      = "Avaristo Silva"

puts action { "#{employee} should report to #{boss}" }
 