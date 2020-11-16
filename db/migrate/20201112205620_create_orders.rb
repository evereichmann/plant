class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :seller_name
      t.string :country_origin
      t.integer :units
      t.decimal :total_price
      t.date :date_order
      t.date :date_shipped
      t.boolean :multiple

      t.timestamps
    end
  end
end
