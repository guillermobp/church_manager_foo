class Phone < ApplicationRecord
  belongs_to :contact
  validates :country_code, presence: true
  validates :number, presence: true

  def display_number
    "+#{country_code} #{number}"
  end
end
