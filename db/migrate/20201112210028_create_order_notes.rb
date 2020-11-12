class CreateOrderNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :order_notes do |t|
      t.text :information
      t.integer :order_id

      t.timestamps
    end
  end
end
