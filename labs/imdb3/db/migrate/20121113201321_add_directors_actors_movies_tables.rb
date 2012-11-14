class AddDirectorsActorsMoviesTables < ActiveRecord::Migration
  def change
  	create_table :directors do |t|
  		t.string :name
  		t.timestamps
  	end
  
  	create_table :movies do |t|
  		t.string :name
  		t.integer :director_id
  		t.integer :studio_id
  		t.timestamps
  	end
  
  	create_table :actors do |t|
  		t.string :name
  		t.timestamps
  	end
  end
end
