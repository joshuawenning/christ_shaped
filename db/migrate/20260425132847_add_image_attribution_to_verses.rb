class AddImageAttributionToVerses < ActiveRecord::Migration[8.1]
  def change
    add_column :verses, :featured_image_title, :string
    add_column :verses, :featured_image_attribution, :string
    add_column :verses, :featured_image_attribution_link, :string
  end
end
