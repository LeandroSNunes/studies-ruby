
has = {}
has = { name: "Leandro", lastname: "Nunes" }

has = Hash.new

# Definir um valor padrão caso uma chave não seja encontrada 
h = Hash.new("default value")

h = {c: 1, b: 2, a: 3}

h.default("default value")
h.default = "default value"

h.default_proc = lambda do |hash, key|
  hash[key] = "Unknown %s key" % key.inspect
end
puts h[:e]
