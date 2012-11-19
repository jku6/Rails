class HomeController < ApplicationController
	def quote
	end
	
	def show
		
		@symbol = params[:stock].upcase
		number = params[:numshares].to_i
		

		
		# @stocks = symbols.map{|symbol| YahooFinance::get_quotes(YahooFinance::StandardQuote, symbol)[symbol]}

		# sleep 5

		@quotes = []
		number.times do |x|
			x = YahooFinance::get_quotes(YahooFinance::StandardQuote, @symbol)[@symbol].lastTrade
			@quotes << x
			sleep 5
		end

		z = @quotes.inject(&:+)

		@avg = z / number



		
	end

end