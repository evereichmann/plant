class AddPotNumberToCuttings < ActiveRecord::Migration[6.0]
  def change
    add_column :cuttings, :container_id, :integer
  end
end
