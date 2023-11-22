class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :manga

  validates :price, presence: true
  # :duration
end
