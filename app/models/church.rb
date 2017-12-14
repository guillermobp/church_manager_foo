class Church < ApplicationRecord
  has_one :address
  has_one :city, through: :address
  has_one :country, through: :city
  has_many :contacts
end
