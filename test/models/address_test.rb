require 'test_helper'

class AddressTest < ActiveSupport::TestCase

  test 'should not be saved without a commune' do
    address = addresses(:anunciacion)
    address.commune = nil
    assert_not address.save
    puts address.errors.first
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

  test 'should have unique street name and number for a give commune' do
    foo = addresses(:anunciacion)
    bar = addresses(:san_ramon)
    foo.street_name = bar.street_name
    foo.street_number = bar.street_number
    assert_not foo.save
  end

  test 'can have the same street name and number for different communes' do
    foo = addresses(:anunciacion)
    bar = addresses(:san_agustin)
    foo.street_name = bar.street_name
    foo.street_number = bar.street_number
    assert foo.save
  end

  test 'can have the same street name within a given commune, but with a different number' do
    foo = addresses(:anunciacion)
    bar = addresses(:san_ramon)
    foo.street_name = bar.street_name
    assert foo.save
  end

end
