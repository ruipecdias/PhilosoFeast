class RenameOldColumnToNewColumn < ActiveRecord::Migration[7.1]
  def change
    rename_column :philosophers, :language, :nationality
  end
end
