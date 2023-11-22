class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :manga

  validates :start_date, :end_date, presence: true
end
