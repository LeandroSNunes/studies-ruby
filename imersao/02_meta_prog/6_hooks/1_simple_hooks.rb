module Comparable
  def self.included(othermod)
    puts "#{othermod} is comparable."
  end
end

class Money < Struct.new(:currency, :amount)
  include Comparable
  
  def <=>(other_money)
    self.amount <=> other_money.amount
  end
end

iphone_price = Money.new("$", 99)
ipad_price   = Money.new("$", 499)

p ipad_price >= iphone_price