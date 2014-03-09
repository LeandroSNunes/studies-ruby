require "json"
data = {
  :name => "Nando Vieira",
  :urls => ["http://simplesideias.com.br", "http://twitter.com/fnando"],
  :age => 29
}
#puts data.to_json        

str = %({ "name":"Nando Vieira", "urls":["http:\/\/simplesideias.com.br","http:\/\/twitter.com\/fnando"], "age":29 })  
puts JSON.parse(str).class

## Exibindo 
#j data
#jj data