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
	end

	describe '#deposit' do 
		it 'adds an ammount to the client balance' do 
			
		end
	end


end

