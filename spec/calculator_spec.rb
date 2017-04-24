require 'calculator'

describe Calculator do

	it "returns 72 if rate == 1" do
		calculator = Calculator.new
		expect(calculator.years_until_investment_returned(1)).to eq(72)
	end

	it "returns 36 if rate == 2" do
		calculator = Calculator.new
		expect(calculator.years_until_investment_returned(2)).to eq(36)
	end

	it "returns 24 if rate == 3" do
		calculator = Calculator.new
		expect(calculator.years_until_investment_returned(3)).to eq(24)
	end

end
