class City < ApplicationRecord
  belongs_to :country
  has_many :addresses
  validates :name, presence: true
end
