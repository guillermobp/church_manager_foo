class Baptism < ApplicationRecord
  belongs_to :priest

  has_one :church, through: :priest
end
