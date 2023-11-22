class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :manga

  validates :duration, presence: true
end
