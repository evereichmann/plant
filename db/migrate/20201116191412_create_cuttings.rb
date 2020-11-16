class CreateCuttings < ActiveRecord::Migration[6.0]
  def change
    create_table :cuttings do |t|
      t.string :name
      t.integer :tag
      t.date :cutting_date
      t.integer :generation
      t.string :condition
      t.boolean :sold
      t.decimal :price
      t.integer :parent_id
      t.string :parent_type
      t.boolean :mother

      t.timestamps
    end
  end
end
