class Church < ApplicationRecord
  has_one :address

  has_one :commune, through: :address
  has_one :province, through: :commune
  has_one :region, through: :province

  has_many :contacts

  has_many :emails, through: :contacts
  has_many :phones, through: :contacts

  has_many :priesthoods
  has_many :priests, through: :priesthoods

  delegate :street_name, to: :address
  delegate :street_number, to: :address

  delegate :id, to: :commune, prefix: true
  delegate :id, to: :province, prefix: true
  delegate :id, to: :region, prefix: true

  validates :name, presence: true
  validates :manager, presence: true

  def last_priesthoods
    Priesthood.group([:priest_id, :church_id]).select(:id, :priest_id, :church_id, :period_begin, :period_end).where(church_id: id)
  end

end
