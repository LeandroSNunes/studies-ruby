=begin
Atribuição de parametro
1. Procura os argumentos obrigatórios e atribui os valores
2. Atribui os valores restantes ao argumentos com valores padrão
3. Se sobrar valores, atribui aos valores opcionais
=end

class Telefone
  def efetuar_ligacao(numero, ddd, operadora)
    "Discando para: #{operadora} #{ddd} #{numero}"
  end
end


class Telefone
  def efetuar_ligacao(numero, ddd, operadora=33)
    "Discando para: #{operadora} #{ddd} #{numero}"
  end
end


class Telefone
  def efetuar_ligacao(numero, operadora=33, ddd)
    "Discando para: #{operadora} #{ddd} #{numero}"
  end
end
