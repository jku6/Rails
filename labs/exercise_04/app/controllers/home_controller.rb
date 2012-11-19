class HomeController < ApplicationController
	def quote
	end
	
	def show
		
		symbols = params[:stocks].upcase.split(', ')
		# symbols is now an array

		
		@stocks = symbols.map{|symbol| YahooFinance::get_quotes(YahooFinance::StandardQuote, symbol)[symbol]}
		
	end

end