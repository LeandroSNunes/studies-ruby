#encoding: UTF-8
#
##ENCODING
str1 = "Leandro Nunes √" 
puts str1.encoding

str1.force_encoding "iso-8859-1"
puts str1.encoding

puts str1.encode("iso-8859-1")  #Lanca uma exception caso nao consiga converter
puts str1.encode("iso-8859-1", :undef => :replace, :replace => "[X]") #dizemos como tratar os caracteres que nao sao convertidos
puts str1.valid_encoding?
