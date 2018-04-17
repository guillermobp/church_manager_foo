require 'test_helper'

class PriestTest < ActiveSupport::TestCase

  test 'should not be saved without a church' do
    priest = priests(:lovejoy)
    priest.church = nil
    assert_not priest.save
  end

  test 'should not be saved without a first name' do
    priest = priests(:lovejoy)

    priest.first_name = nil
    assert_not priest.save

    priest.first_name = ''
    assert_not priest.save
  end

  test 'should not be saved without a last name' do
    priest = priests(:lovejoy)

    priest.last_name = nil
    assert_not priest.save

    priest.last_name = ''
    assert_not priest.save
  end

end
