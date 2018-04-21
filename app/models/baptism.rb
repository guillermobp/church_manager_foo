class Baptism < ApplicationRecord
  belongs_to :priest
  belongs_to :baptised
  belongs_to :mother
  belongs_to :father
end
