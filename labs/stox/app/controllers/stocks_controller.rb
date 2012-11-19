class StocksController < ApplicationController
	def index
		
	end
	def new
		@stock = Stock.new
	end

	def create

	end

	# def quote
	# end
	
	# def show
		
	# 	symbols = params[:stocks].upcase.split(', ')
	# 	# symbols is now an array

	# 	@stocks = symbols.map{|symbol| YahooFinance::get_quotes(YahooFinance::StandardQuote, symbol)[symbol]}
		
	# end

end