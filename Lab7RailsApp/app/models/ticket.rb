class Ticket < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :movie_title, presence: true, length: { minimum: 2 }
  validates :genre, presence: true
  validates :show_time, presence: true
  validates :seat, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :description, presence: true, length: { minimum: 5, maximum: 1000 }
  validate :acceptable_image

  private

  def acceptable_image
    return unless image.attached?

    acceptable_types = ["image/jpeg", "image/png", "image/webp"]

    unless acceptable_types.include?(image.content_type)
      errors.add(:image, "має бути у форматі JPEG, PNG або WebP")
    end

    if image.byte_size > 5.megabytes
      errors.add(:image, "не повинен перевищувати 5 МБ")
    end
  end
end