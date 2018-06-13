class Baptised < Person
  has_one :baptism
  has_one :church, through: :baptism
end
