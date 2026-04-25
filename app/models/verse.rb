class Verse < ApplicationRecord
  has_one_attached :featured_image
  has_rich_text :body
  validates :reference, :scripture, presence: true
  validates :featured_image_title, presence: true, if: :featured_image_attached?

  def featured_image_attached?
    featured_image.attached?
  end

  def self.latest
    order(created_at: :desc).first
  end

  def self.recent
    order(created_at: :desc)
  end
end
