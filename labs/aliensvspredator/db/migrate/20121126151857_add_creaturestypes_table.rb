class AddCreaturestypesTable < ActiveRecord::Migration
    def change
        create_table :creature_types do |t|
            t.string :name
            t.timestamps
        end
    end
end
