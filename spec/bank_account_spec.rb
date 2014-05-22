require 'bank_account'
require 'spec_helper'

describe 'BankAccount' do

	before {@my_bank_account = BankAccount.new}

	specify 'I can deposit 1 AUD' do
		expect(@my_bank_account.deposit(1)).to eq 1
	end
end