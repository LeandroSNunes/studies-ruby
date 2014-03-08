# require 'builder'
# 
# builder = Builder::XmlMarkup.new
# xml = builder.person do |b| 
#   b.name "Jim"
#   b.phone "+55 (31) 3305-4564"
# end
# p xml # => "<person><name>Jim</name></person>"

require 'builder/blankslate'

module Builder

  class IllegalBlockError < RuntimeError; end

  class XmlBase < BlankSlate

    def initialize(indent=0, initial=0)
      @indent = indent
      @level  = initial
    end

    def tag!(sym, *args, &block)
      method_missing(sym.to_sym, *args, &block)
    end

    def method_missing(sym, *args, &block)
      text = nil
      attrs = nil
      sym = "#{sym}:#{args.shift}" if args.first.kind_of?(Symbol)
      args.each do |arg|
        case arg
        when Hash
          attrs ||= {}
          attrs.merge!(arg)
        else
          text ||= ''
          text << arg.to_s
        end
      end
      if block
        unless text.nil?
          raise ArgumentError, "XmlMarkup cannot mix a text argument with a block"
        end
        _indent
        _start_tag(sym, attrs)
        _newline
        _nested_structures(block)
        _indent
        _end_tag(sym)
        _newline
      elsif text.nil?
        _indent
        _start_tag(sym, attrs, true)
        _newline
      else
        _indent
        _start_tag(sym, attrs)
        text! text
        _end_tag(sym)
        _newline
      end
      @target
    end

    #   builder.p { |b| b.br; b.text! "HI" }   #=>  <p><br/>HI</p>
    def text!(text)
      _text(_escape(text))
    end

    def <<(text)
      _text(text)
    end

    def nil?
      false
    end

    private

    require 'builder/xchar'
    def _escape(text)
      text.to_xs
    end

    def _escape_quote(text)
      _escape(text).gsub(%r{"}, '&quot;')  # " WART
    end

    def _newline
      return if @indent == 0
      text! "\n"
    end

    def _indent
      return if @indent == 0 || @level == 0
      text!(" " * (@level * @indent))
    end

    def _nested_structures(block)
      @level += 1
      block.call(self)
    ensure
      @level -= 1
    end
  end
end
