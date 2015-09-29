# Podem ser criadas da sequinte maneira
rg = /^[0-9]/
rg = Regexp.new "^[0-9]"
rg = %r{^[0-9]}

# Operadores
# =~ Indica que a expressão casou, retornando a posição da string
# !~ Indica que a expressão não casou

# Modificadores
# //i Indica que não é case sensitive


#Look behind
#CASANDO SE OUTRO PATTERN FO CASADO  (?<=[rc])asa
str = "rasa asa casa"
str.gsub(/((?<=[rc])asa)/, '[\1]')

#DANDO NOME AOS GRUPOS PARA NAO USAR RETROVISORES
str = "2008-08-23"
str.gsub(/(?<year>\d{4})-(?<month>\d{2})-(?<day>\d{2})/, '\k<day>/\k<month>/\k<year>')
