require_relative 'spec_helper.rb'
require_relative '../bank.rb'

describe Bank do  ## Need to have a bank class in bank.rb

	let(:bank) { Bank.new('GA TD Bank') }	# This means we won't need to initialize bank = Bank.new("GA TD Bank")

	describe '.new' do 							# Testing the .new method
		it 'creates a bank object' do			# Feature that is described 
			# bank = Bank.new('GA TD Bank')		# When creating a new bank, need to pass in a name
			expect(bank).to_not eq nil			# When creating a bank, should not equal nil
		end

		it 'assigns a name' do  
			# bank = Bank.new('GA TD Bank')
			expect(bank.name).to eq 'GA TD Bank'
		end

		it 'has no accounts' do 				# Should be no accounts in there when you create a new account
			expect(bank.accounts.count).to eq 0
		end
	end

	describe '#create_account' do 
		it 'creates a new account' do 
			# bank = Bank.new('GA TD Bank')
			# pending 							# Call it pending to tell them that this test is still in progress
			bank.create_account('Homer', 200)
			expect(bank.accounts['Homer']).to eq 200
		end

		it 'ignores opening balance of less than or equal to 0' do 
			bank.create_account('Marge', -100) 
			expect(bank.balance('Marge')).to eq nil 		# She is not able to open the account at all
		
			bank.create_account('Grandpa Simpson', 0)
			expect(bank.balance('Grandpa Simpson')).to eq nil
		end
	end


	describe '#deposit' do 
		it 'adds an ammount to the client balance' do 
			bank.create_account('Lisa', 5)
			bank.deposit('Lisa', 1_000_000) 
			expect(bank.accounts['Lisa']).to eq 1_000_000 + 5
		end
	end

	describe '#balance' do 
		it 'returns the balance for an account' do 
			bank.create_account('Maggie', 1)
			expect(bank.balance('Maggie')).to eq 1
		end
	end

	describe '#withdraw' do 
		it 'subtracts an amount from the account balance' do 
			bank.create_account('Snowball VII', 10)
			expect(bank.withdraw('Snowball VII', 5)).to eq 10 - 5
		end
	end

	it 'ignores requests for withdrawals greater than the account balance' do 
		bank.create_account('Bartman', 1)
		bank.withdraw('Bartman', 1_000_000_000)
		expect(bank.balance('Bartman')).to eq 1
	end


end

