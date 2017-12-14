class Phone < ApplicationRecord
  belongs_to :contact
  validates :country_code, presence: true
  validates :number, presence: true
end
