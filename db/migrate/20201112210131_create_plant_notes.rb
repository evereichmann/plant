class CreatePlantNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :plant_notes do |t|
      t.string :title
      t.date :note_date
      t.text :text_field
      t.integer :plant_id

      t.timestamps
    end
  end
end
