class Manga < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :title, :author, :category, presence: true
  validates :synopsis, presence: true, length: { minimum: 50 }
end
