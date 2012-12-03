class CreatePirates < ActiveRecord::Migration
  def change
    create_table :pirates do |t|

      t.timestamps
    end
  end
end
