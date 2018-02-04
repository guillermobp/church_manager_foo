require 'test_helper'

class RegionTest < ActiveSupport::TestCase

  test 'should not be saved without a name' do
    region = regions(:metropolitana)
    region.name = nil
    assert_not region.save
  end

  test 'should not be save with a blank name' do
    region = regions(:metropolitana)
    region.name = ' '
    assert_not region.save
  end

  test 'should have a unique, case insensitive name' do
    region = Region.new(name: regions(:metropolitana).name.downcase)
    assert_not region.save
  end

end
