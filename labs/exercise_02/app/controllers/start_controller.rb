class StartController < ApplicationController
	def index

	end

	def create
		
		@name = params[:name]
	end
	
	
end