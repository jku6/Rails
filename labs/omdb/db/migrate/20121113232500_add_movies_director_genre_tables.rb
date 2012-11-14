class AddMoviesDirectorGenreTables < ActiveRecord::Migration
	def change
  	create_table :movies do |t|
	  	t.string :title
	  	t.string :year
	  	t.string :rated
	  	t.string :genre
	  	t.timestamps
  	end

  	create_table :actors do |t|
	  	t.string :name
	  	t.timestamps
  	end

  	create_table :genres do |t|
	  	t.string :name
	  	t.timestamps
  	end

  	create_table :actors_movies, :id => false do |t|
	  	t.integer :actor_id
	  	t.integer :movie_id
	  	
	end

	create_table :genres_movies, :id => false do |t|
	  	t.integer :genre_id
	  	t.integer :movie_id
	  	
	end


  	end
end
