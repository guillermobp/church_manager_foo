class Region < ApplicationRecord
  has_many :provinces, dependent: :destroy
  has_many :communes, through: :provinces
  has_many :addresses, through: :communes
  has_many :churches, through: :addresses

  validates :name, presence: true
end
