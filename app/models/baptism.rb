class Baptism < ApplicationRecord
  belongs_to :priest
  belongs_to :baptised
  belongs_to :mother
  belongs_to :father
  belongs_to :godmother
  belongs_to :godfather

  has_one :church, through: :priest
end
