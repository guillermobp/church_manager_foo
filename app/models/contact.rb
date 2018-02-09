class Contact < ApplicationRecord
  has_many :emails
  has_many :phones

  belongs_to :church

  belongs_to :main_email, class_name: 'Email', optional: true
  belongs_to :main_phone, class_name: 'Phone', optional: true

  delegate :address, to: :main_email, prefix: true
  delegate :display_number, to: :main_phone, prefix: true

  validates :full_name, presence: true

  validates :main_email, inclusion: { in: :emails, allow_nil: true }
  validates :main_phone, inclusion: { in: :phones, allow_nil: true }
end
