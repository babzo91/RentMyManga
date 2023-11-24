class Manga < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :bookings
  validates :title, :author, :category, presence: true
  validates :synopsis, presence: true, length: { minimum: 50 }

  include PgSearch::Model
  pg_search_scope :search_manga,
    against: [ :title, :synopsis, :author, :category ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
