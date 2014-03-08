module Formatter
  class AbstractMethodError < StandardError; end
  
  class Base
    
    attr_accessor :content
    
    def initialize(content)
      @content = content
    end
    
    def to_html
      raise Formatter::AbstractMethodError
    end
    
  end
  
  
end