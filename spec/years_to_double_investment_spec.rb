require 'years_to_double_investment'

describe Display do

	it "displays 'What is the rate of return?' to user" do
		output = StringIO.new
		display = Display.new(output)
		display.display_rate_question
		expect(output.string).to eq("What is the rate of return?\n")
	end



end
