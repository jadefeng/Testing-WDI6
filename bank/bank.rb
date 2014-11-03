class Bank
	attr_accessor :name, :accounts

	def initialize(name)
		@name = name
		@accounts = {}
	end


	def create_account(name, opening_balance)
		@accounts[name] = opening_balance
	end
end