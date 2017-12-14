class Address < ApplicationRecord
  belongs_to :church
  belongs_to :city
  has_one :country, through: :city
  validates :street_name, presence: true
  validates :street_number, presence: true
end
