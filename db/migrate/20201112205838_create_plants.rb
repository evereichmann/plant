class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.integer :order_id
      t.string :name
      t.decimal :unit_price
      t.date :arrival_date
      t.string :condition
      t.date :recovery_date
      t.boolean :sold
      t.decimal :price
      t.integer :tag

      t.timestamps
    end
  end
end
