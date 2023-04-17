class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :vacancies, dependent: :destroy
  has_one_attached :photo
  geocoded_by :zipcode
  after_validation :geocode, if: :will_save_change_to_zipcode?

  validates :name, presence: true
  validates :description, presence: true
  validates :price_per_night, presence: true
  validates :address_one, presence: true
  validates :zipcode, presence: true
  validates :country, presence: true

  include PgSearch::Model

  pg_search_scope :search_by_location,
                  against: [ :name, :address_one, :zipcode, :country ],
                  using: {
                    tsearch: { prefix: true }
                  }
end
