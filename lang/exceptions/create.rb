class NameNotEqual < StandardError
  def initialize(current,expected)
    super "você digitou um nome inválido (#{current})! era esperado #{expected}."
  end
end
