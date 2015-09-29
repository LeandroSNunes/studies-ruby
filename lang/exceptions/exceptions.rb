
begin
  1 + 'eu'
rescue StandardError => exception
  puts "Ocorreu um erro: #{exception}"
end

## Sem fornecer o tipo da exceção
begin
  1 + 'eu'
rescue => exception
  puts "Ocorreu um erro: #{exception}"
end

## Passando código para sempre ser executado
begin
  1 + 'eu'
rescue StandardError => exception
  puts "Ocorreu um erro: #{exception}"
ensure
  puts "Lascou tudo."
end

## Executar o bloco que deu problema novamente
begin
  1 + 'eu'
rescue StandardError => exception
  puts "Ocorreu um erro: #{exception}"
  retry
ensure
  puts "Lascou tudo."
end

## Para ter acesso ao backtrace
# exception.backtrace

## Disparando exceção
raise Exception.new("Leandro")

