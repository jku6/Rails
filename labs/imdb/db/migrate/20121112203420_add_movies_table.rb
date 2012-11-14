class AddMoviesTable < ActiveRecord::Migration
  def change

# # these are the diff types
# :binary
# :boolean
# :date
# :datetime
# :decimal
# :float
# :integer
# :primary_key
# :string
# :text
# :time
# :timestamp
  	create_table :movies do |t|
  		t.string :name
  		t.text :description
  		t.decimal :gross
  		t.string :rating
  		t.integer :tickets_sold
  		t.timestamps


  	end
  end
end
