class AddStocksTable < ActiveRecord::Migration
  	def change
		create_table :stocks do |t|

			t.integer :id
			t.string :symbol
			t.decimal :quote
			t.timestamps

		end

	end
end
