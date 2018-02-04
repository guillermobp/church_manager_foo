require 'test_helper'

class PhoneTest < ActiveSupport::TestCase

  test 'should not be saved without a contact' do
    phone = phones(:one)
    phone.contact = nil
    assert_not phone.save
  end

  test 'should not be saved without a country code' do
    phone = phones(:one)
    phone.country_code = nil
    assert_not phone.save
  end

  test 'should not be saved without a numebr' do
    phone = phones(:one)
    phone.number = nil
    assert_not phone.save
  end

end
