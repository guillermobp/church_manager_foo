class Address < ApplicationRecord
  belongs_to :church
  belongs_to :commune
  has_one :province, through: :commune
  has_one :region, through: :province

  validates :commune_id, presence: true, uniqueness: true
  validates :street_name, presence: true, uniqueness: { scope: :commune }
  validates :street_number, presence: true
  validates :zip_code, uniqueness: { allow_nil: true }
end
