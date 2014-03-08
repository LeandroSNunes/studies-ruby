module Formatter
  class UnknownFormatterError < StandardError; end
  
  FORMATTERS = {
    :textitle => "Formatter::Textitle",
    :markdown => "Formatter::Markdown"
  }
  
  def self.format(type, content)
    formatter_name = FORMATTERS[type.to_sym]
    raise UnknownFormatterError unless formatter_name
    
    formatter = eval(formatter_name)
    formatter.new(content).to_html
  end

end