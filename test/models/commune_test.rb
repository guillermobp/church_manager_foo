require 'test_helper'

class CommuneTest < ActiveSupport::TestCase

  test 'should not be saved without a province' do
    commune = communes(:santiago)
    commune.province = nil
    assert_not commune.save
  end

  test 'should not be saved without a name' do
    commune = communes(:santiago)
    commune.name = nil
    assert_not commune.save
  end

  test 'should not be save with a blank name' do
    commune = communes(:santiago)
    commune.name = ' '
    assert_not commune.save
  end

  test 'should have a unique, case insensitive name, within the same province' do
    foo = provinces(:santiago).communes.first
    bar = provinces(:santiago).communes.second
    foo.name = bar.name
    assert_not foo.save
  end

  test 'could have the same name of a commune in another province' do
    foo = provinces(:santiago).communes.first
    bar = provinces(:chacabuco).communes.first
    foo.name = bar.name
    assert foo.save
  end

end
