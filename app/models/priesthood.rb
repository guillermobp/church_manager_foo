class Priesthood < ApplicationRecord
  belongs_to :priest
  belongs_to :church

  def active?
    period_end == nil
  end
end
