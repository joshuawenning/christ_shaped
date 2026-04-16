class CreateVerses < ActiveRecord::Migration[8.1]
  def change
    create_table :verses do |t|
      t.string :reference
      t.text :full_text
      t.text :body

      t.timestamps
    end
  end
end
