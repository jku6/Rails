class AddNametopirate < ActiveRecord::Migration
    def change
    add_column :pirates, :name, :string

    end
end
