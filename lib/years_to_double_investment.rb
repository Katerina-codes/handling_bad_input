class Display

	def initialize(output = $stdout)
		@output = output
	end

	def display_rate_question
		@output.puts "What is the rate of return?"
	end

end
