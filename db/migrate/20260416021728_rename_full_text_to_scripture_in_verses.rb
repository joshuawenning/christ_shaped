class RenameFullTextToScriptureInVerses < ActiveRecord::Migration[8.1]
  def change
    rename_column :verses, :full_text, :scripture
  end
end
