class Baptism < ApplicationRecord
  belongs_to :priest
  belongs_to :baptised, class_name: 'Person'
  belongs_to :mother, class_name: 'Person'
  belongs_to :father, class_name: 'Person'
  belongs_to :godmother, class_name: 'Person'
  belongs_to :godfather, class_name: 'Person'

  has_one :church, through: :priest
end
