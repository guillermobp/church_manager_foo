require 'test_helper'

class AddressTest < ActiveSupport::TestCase

  test 'should not be saved without a commune' do
    address = addresses(:anunciacion)
    address.commune = nil
    assert_not address.save
  end

  test 'should not be saved without a street name' do
    address = addresses(:anunciacion)
    address.street_name = nil
    assert_not address.save
  end

  test 'should not be saved with a blank street name' do
    address = addresses(:anunciacion)
    address.street_name = ' '
    assert_not address.save
  end

  test 'should not be saved without a street number' do
    address = addresses(:anunciacion)
    address.street_number = nil
    assert_not address.save
  end

  test 'should not be saved with a blank number' do
    address = addresses(:anunciacion)
    address.street_number = ' '
    assert_not address.save
  end

end
