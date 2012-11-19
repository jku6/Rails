class HelloController < ApplicationController

	def world
		render :text => "hello world!!!"
	end
	def jonathan
		render :text => "jonathan"
	end
	def dogs
		render :text => "cats"
	end
	def ruby 
		render :text => "rails"
	end

end