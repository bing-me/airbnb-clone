class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true
  validates :price_per_night, presence: true
  validates :address_one, presence: true
  validates :zipcode, presence: true
  validates :country, presence: true
end
