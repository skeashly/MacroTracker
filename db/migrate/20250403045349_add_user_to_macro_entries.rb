class AddUserToMacroEntries < ActiveRecord::Migration[7.2]
  def change
    add_reference :macro_entries, :user, foreign_key: true, null: true  # Allow nulls first
  end
end
