class Display

	def initialize(output = $stdout, input = $stdin)
		@output = output
		@input = input
	end

	def display_rate_question
		@output.puts "What is the rate of return?"
	end

	def get_rate_of_return
		rate = @input.gets
		if rate.to_i < 1
			"Please enter a number greater than 0"
		else
			"#{rate}"
		end
	end

	def years_until_investment_returned(rate)
		if rate == 1
			72
		elsif rate == 2
			36
		else
			24
		end
	end

end
