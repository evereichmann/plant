class AddPotNumberToPlants < ActiveRecord::Migration[6.0]
  def change
    add_column :plants, :container_id, :integer, :null => true
  end
end
