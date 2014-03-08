module Comparable
  def self.included(base)
    puts "#{base} now is comparable"
  end
end

class Money < Struct.new(:currency, :amount)
  include Comparable
  
  def <=>(other_money)
    self.amount <=> other_money.amount
  end
end

class OutraClass
  include Comparable
end

iphone_price = Money.new("$", 99)
ipad_price   = Money.new("$", 499)

p ipad_price >= iphone_price
p ipad_price <= iphone_price
p ipad_price > iphone_price
p ipad_price == iphone_price