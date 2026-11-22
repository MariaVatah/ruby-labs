class Ticket < ApplicationRecord
  belongs_to :user

  validates :movie_title, presence: true, length: { minimum: 2 }
  validates :genre, presence: true
  validates :show_time, presence: true
  validates :seat, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :description, length: { maximum: 1000 }, allow_blank: true
end