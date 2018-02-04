class Email < ApplicationRecord
  belongs_to :contact

  validates :address, presence: true, format: { :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/ }
end
