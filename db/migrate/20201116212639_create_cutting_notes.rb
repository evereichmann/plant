class CreateCuttingNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :cutting_notes do |t|
      t.string :title
      t.date :note_date
      t.text :text_field
      t.string :cutting_id

      t.timestamps
    end
  end
end
