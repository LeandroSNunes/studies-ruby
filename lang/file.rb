
#File aceita objetos em paths desde que eles respondam a to_path

class Config
   def to_path
      "/Users/leandronunes/Dropbox/ruby/date.rb"
   end
end

config = Config.new
f = File.read(config)
puts f
puts f.encoding

# PEGANDO O CAMINHO ABSOLUTO
puts File.absolute_path "date.rb"