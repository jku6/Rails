class Main
	def self.run

		puts "what (m)ovie, or (q)uit"
		movie = gets.chomp
		

		while movie != 'q'
	

			response = HTTParty.get('http://www.omdbapi.com/?t=' + movie)

			json = JSON(response)

			title = json["Title"].split(', ')
			year = json["Year"].split(', ')
			rated = json["Rated"].split(', ')

			actorname = json["Actors"].split(', ')
			genrename = json["Genre"].split(', ')


			m1 = Movie.create(:title => title, :year => year, :rated => rated)
			a = Actor.create(:name => actorname)
			g = Genre.create(:name => genrename)
		
		# stock_names = []

		# 3.times do 
		# 	puts "Creating a stock"
		# 	puts "Symbol?"
		# 	symbol = gets.chomp.upcase #needs to be uppercase for stock symbols
		# 	stock_names << symbol
		# end

		# while true

		# 	sleep 1

		# 	stock_names.each do |symbol|
		# 		begin
		# 			quote = YahooFinance::get_quotes(YahooFinance::StandardQuote, symbol)[symbol].lastTrade
		# 			stock = Stock.create(:symbol => symbol, :quote => quote)
		# 			u1.stocks << stock
		# 		rescue
		# 		end
		# 	end
		# end

			puts "what (m)ovie, or (q)uit"
			movie = gets.chomp
		end
	end
end