require 'test_helper'

class AddressTest < ActiveSupport::TestCase

  test 'should not save address without a commune' do
    church = churches(:san_agustin)
    address = Address.new(street_name: 'Acacia Avenue', street_number: '22', church: church)
    assert_not address.save
  end

  test 'should not save address without a street name' do
    commune = communes(:concepcion)
    church = churches(:san_agustin)
    address = Address.new(street_number: 254)
    assert_not address.save
  end

  test 'should not save address without a street number' do
    commune = communes(:concepcion)
    church = churches(:san_agustin)
    address = Address.new(street_name: 'Castellon', commune: commune, church: church)
    assert_not address.save
  end

end
