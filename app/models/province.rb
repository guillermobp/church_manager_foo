class Province < ApplicationRecord
  belongs_to :region
  has_many :communes
  has_many :addresses, through: :communes
  has_many :churches, through: :addresses

  validates :name, presence: true, uniqueness: { case_sensitive: false, scope: :region }
end
