class Baptism < ApplicationRecord
  belongs_to :priest
  belongs_to :baptised, class_name: 'Person'
  belongs_to :mother, class_name: 'Person'
  belongs_to :father, class_name: 'Person'
  belongs_to :godmother, class_name: 'Person'
  belongs_to :godfather, class_name: 'Person'

  has_one :church, through: :priest

  delegate :name_for_display, to: :priest, prefix: true
  delegate :name_for_display, to: :baptised, prefix: true
  delegate :name_for_display, to: :mother, prefix: true
  delegate :name_for_display, to: :father, prefix: true
  delegate :name_for_display, to: :godmother, prefix: true
  delegate :name_for_display, to: :godfather, prefix: true

  def date_for_display
    date.strftime('%B %e, %Y')
  end
end
