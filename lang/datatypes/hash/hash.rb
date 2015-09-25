# A forma que o hash é definido 
has = {
  name: "Leandro",
  lastname: "Nunes"
}


# Definir um valor padrão caso uma chave não seja encontrada -> default_proc
h = {c: 1, b: 2, a: 3}
h.default_proc = lambda do |hash, key|
  hash[key] = "Unknown %s key" % key.inspect
end
puts h[:e]