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
		if rate == "0"
			"Please enter a number greater than 0"
		else
			"#{rate}"
		end
	end
end
