class RemoveNamesFromMoviesTable < ActiveRecord::Migration
  def change
  	remove_column :movies, :name
  end
end
