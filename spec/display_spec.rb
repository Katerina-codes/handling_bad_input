require 'display'

describe Display do

	it "displays 'What is the rate of return?' to user" do
		output = StringIO.new
		display = Display.new(output)
		display.display_rate_question
		expect(output.string).to eq("What is the rate of return?\n")
	end

	it "gets rate of return from the user" do
		input = StringIO.new("blah")
		output = StringIO.new
		display = Display.new(output, input)
		expect(display.get_rate_of_return).to eq("Please enter a number greater than 0")
	end

	it "returns 'Please enter a number greater than 0'" do
		input = StringIO.new("0")
		output = StringIO.new
		display = Display.new(output, input)
		expect(display.get_rate_of_return).to eq("Please enter a number greater than 0")
	end

	it "returns 'Please enter a number greater than 0'" do
		input = StringIO.new("!")
		output = StringIO.new
		display = Display.new(output, input)
		expect(display.get_rate_of_return).to eq("Please enter a number greater than 0")
	end

	it "returns 72 if rate == 1" do
		display = Display.new
		expect(display.years_until_investment_returned(1)).to eq(72)
	end

	it "returns 36 if rate == 2" do
		display = Display.new
		expect(display.years_until_investment_returned(2)).to eq(36)
	end

	it "returns 24 if rate == 3" do
		display = Display.new
		expect(display.years_until_investment_returned(3)).to eq(24)
	end
end
