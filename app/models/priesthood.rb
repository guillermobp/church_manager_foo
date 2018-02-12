class Priesthood < ApplicationRecord
  belongs_to :priest, class_name: 'Person'
  belongs_to :church

  def is_active
    period_end == nil
  end
end
