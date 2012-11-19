class HomeController < ApplicationController
	def ask
	end
	
	def show
		
		symbols = params[:movie_name].split(', ')

		

		title = symbols.split.join('+')

		response = HTTParty.get('http://www.omdbapi.com/?t=' + title)

		json = JSON(response)

		@movies = symbols.map{|symbol| json}


		# response = HTTParty.get('http://www.omdbapi.com/?t=' + movie_name)

		# 	json = JSON(response)

			# title = json["Title"].split(', ')
			# year = json["Year"].split(', ')
			# rated = json["Rated"].split(', ')

			# actorname = json["Actors"].split(', ')
			# genrename = json["Genre"].split(', ')



		# symbols = params[:stocks].upcase.split(', ')

		
		# @stocks = symbols.map{|symbol| YahooFinance::get_quotes(YahooFinance::StandardQuote, symbol)[symbol]}
		
	end

end