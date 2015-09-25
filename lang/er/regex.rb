#Look behind
#CASANDO SE OUTRO PATTERN FO CASADO  (?<=[rc])asa
str = "rasa asa casa"
str.gsub(/((?<=[rc])asa)/, '[\1]')      

#DANDO NOME AOS GRUPOS PARA NAO USAR RETROVISORES 
str = "2008-08-23"
str.gsub(/(?<year>\d{4})-(?<month>\d{2})-(?<day>\d{2})/, '\k<day>/\k<month>/\k<year>')
