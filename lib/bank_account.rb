class BankAccount

	def initialize
		@balance = Amount.new(0)
	end

	def deposit(amount)
		@balance = @balance.add(amount)
	end

end