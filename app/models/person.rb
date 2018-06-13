class Person < ApplicationRecord
  validates :national_identification_number, presence: true
  validates :national_identification_number, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end

  def nin_for_display
    "#{national_identification_number}-#{check_digit}"
  end

  private

    def check_digit
      sum = 0
      acc = 2

      national_identification_number.to_s.reverse.each_char do |n|
        acc = 2 if acc == 8
        sum += (n.to_i * acc)
        acc = acc + 1
      end

      rem = 11 - (sum % 11)

      return rem == 11 ? '0' : (rem == 10 ? 'K' : rem.to_s)
    end

end
