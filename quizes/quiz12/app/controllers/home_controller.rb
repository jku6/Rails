class HomeController < ApplicationController
	def type
	end
	
	def show
		@new = params[:number].to_i

		
	end

end