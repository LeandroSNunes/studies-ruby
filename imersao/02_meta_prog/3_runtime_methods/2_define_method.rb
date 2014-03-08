class Account

  attr_accessor :credits, :debits

  define_method :balance do
    @credits - @debits
  end

end

conta = Account.new
conta.debits  = 10
conta.credits = 5
puts conta.balance #=> -5