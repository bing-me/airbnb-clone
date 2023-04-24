class Vacancy < ApplicationRecord
  belongs_to :flat

  validates :date, presence: true, uniqueness: { scope: :flat_id }
end
