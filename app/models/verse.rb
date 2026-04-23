class Verse < ApplicationRecord
  validates :reference, :scripture, presence: true

  def self.latest
    order(created_at: :desc).first
  end

  def self.recent
    order(created_at: :desc)
  end
end
