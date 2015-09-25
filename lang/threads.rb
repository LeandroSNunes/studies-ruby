# Thread é uma forma de dividir um processo em diversas tarefas que podem ser executadas simultaneamente

# EXEMPLO 1

# t = Thread.new do
#   puts "thread inicializada ...."
#   10.times do |i|
#     puts "loop #{i}"
#     sleep(1)
#   end
# end
# puts "dormindo 2 segundos ..."
# #sleep(2)
# t.join(5)
# puts "thread finalizada ...."


# EXEMPLO 2
# palavras = ["Um","Dois","Tres","Quatro"]
# numeros = [1,2,3,4]
#
# puts "Sem Threads...."
#
# palavras.each { |palavra| puts(palavra) }
# numeros.each { |numero| puts(numero) }
#
# puts "Com Threads...."
#
# Thread.new { palavras.each { |palavra| puts(palavra + " - ") } }
# Thread.new{ numeros.each { |numero| puts(numero) } }
#
# sleep(5)

# EXEMPLO 3 -- com Proc

# Definindo o Proc
p = Proc.new do |n|
  t = 2.0/n
  sleep(t)
  printf "thread %d, aguardou %.2f segundos\n",n,t
end

t1 = Thread.new(1,&p)
t2 = Thread.new(2,&p)
t3 = Thread.new(3,&p)
t4 = Thread.new(4,&p)
t5 = Thread.new(5,&p)
puts "aguardando thread 1 ..."
t1.join
puts "terminei"

# Mutex
# tem q usar Mutex para que tenhamos Threads sincronas

# Condition variables
# Condition variables sa ̃o associadas a um Mutex e utilizadas para esperar ou indicar que um recurso esta ́ ocupado ou liberado.




