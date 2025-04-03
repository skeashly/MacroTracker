class MakeUserIdNotNullInMacroEntries < ActiveRecord::Migration[7.0]
  def change
    change_column_null :macro_entries, :user_id, false
  end
end