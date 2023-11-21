class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :manga

  validates :price, :status, :duration, presence: true
end
