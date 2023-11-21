class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :manga

  validates :price, :duration, presence: true
end
