require 'bank_account'
require 'amount'
require 'spec_helper'

describe 'BankAccount' do

	before {@my_bank_account = BankAccount.new}

	specify 'I can deposit 1 AUD' do
		amount = Amount.new(1)
		expect(@my_bank_account.deposit(amount)).to eq amount
	end

	specify 'I can deposit 5 AUD' do
		amount = Amount.new(5)
	 	expect(@my_bank_account.deposit(amount)).to eq amount
	end

	it "should return total balance if I deposit twice" do
		amount = Amount.new(1)
		@my_bank_account.deposit(amount)		
		expect(@my_bank_account.deposit(amount)).to eq Amount.new(2)
	end
	
end