require_relative 'calculator'

class Display

  def initialize(output = $stdout, input = $stdin)
		@output = output
		@input = input
	end

	def display_rate_question
		@output.puts "What is the rate of return?"
	end

	def get_rate_of_return
	  rate = @input.gets.to_i
		until rate > 0
			@output.puts "Please enter a number greater than 0"
			rate = @input.gets.to_i
		end
	  rate
	end

	def display_years_until_investment_returned
		display_rate_question
		rate = get_rate_of_return
		years = Calculator.new.years_until_investment_returned(rate)
		puts display_years = "It will take " + years.to_s + " years to double your initial investment."
		display_years
	end

end
