class Church < ApplicationRecord
  has_one :address

  has_one :commune, through: :address
  has_one :province, through: :commune
  has_one :region, through: :province

  has_many :contacts

  has_many :emails, through: :contacts
  has_many :phones, through: :contacts

  validates :name, presence: true
  validates :manager, presence: true
end
