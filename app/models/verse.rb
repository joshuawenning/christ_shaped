class Verse < ApplicationRecord
  has_one_attached :featured_image
  has_rich_text :body
  validates :reference, :scripture, presence: true

  def self.latest
    order(created_at: :desc).first
  end

  def self.recent
    order(created_at: :desc)
  end
end
