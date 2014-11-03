class Bank
	attr_accessor :name, :accounts

	def initialize(name)
		@name = name
		@accounts = {}
	end

	def create_account(name, opening_balance)
		@accounts[name] = opening_balance if opening_balance > 0
	end

	def deposit(name, deposit_amount)
		@accounts[name] += deposit_amount
	end

	def balance(name)
		@accounts[name]
	end

	def withdraw(name, amount)
		@accounts[name] -= amount if self.balance(name) >= amount
	end
end