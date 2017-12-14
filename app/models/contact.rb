class Contact < ApplicationRecord
  has_many :emails
  has_many :phones
  belongs_to :church
  validates :full_name, presence: true
end
