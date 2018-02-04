class Commune < ApplicationRecord
  belongs_to :province
  has_one :region, through: :province
  has_many :addresses
  has_many :churches, through: :addresses

  validates :name, presence: true, uniqueness: { case_sensitive: false, scope: :province }
end
