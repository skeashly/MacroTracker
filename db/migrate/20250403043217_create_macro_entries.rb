class CreateMacroEntries < ActiveRecord::Migration[7.2]
  def change
    create_table :macro_entries do |t|
      t.integer :protein
      t.integer :fat
      t.integer :carbs
      t.integer :step_count
      t.text :notes
      t.date :date

      t.timestamps
    end
  end
end
