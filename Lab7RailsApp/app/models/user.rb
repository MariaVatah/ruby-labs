class User < ApplicationRecord
  enum :role, { user: 0, admin: 1 }

  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  has_many :tickets, dependent: :destroy
end