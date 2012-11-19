class MoviesController < ApplicationController
	def index
		@temp = "jon"
		@movies = Movie.all
	end
	def new
	end
	def create
		# params will give you a hash, name is the key, movie_name becomes a string
		#raise params.inspect
		movie_name = params[:name]
		poster = params[:poster]
		Movie.create(:name => movie_name, :poster => poster)
		redirect_to movies_path
	end
	def destroy
		movie = Movie.find(params[:id])
		movie.delete
		redirect_to movies_path


	end
end