class CreateContainers < ActiveRecord::Migration[6.0]
  def change
    create_table :containers do |t|
      t.string :plant_name
      t.integer :pot_number

      t.timestamps
    end
  end
end
