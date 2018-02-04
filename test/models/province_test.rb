require 'test_helper'

class ProvinceTest < ActiveSupport::TestCase

  test 'should not be saved without a region' do
    province = provinces(:santiago)
    province.region = nil
    assert_not province.save
  end

  test 'should not be saved without a name' do
    province = provinces(:santiago)
    province.name = nil
    assert_not province.save
  end

  test 'should not be save with a blank name' do
    province = provinces(:santiago)
    province.name = ' '
    assert_not province.save
  end

  test 'should have a unique, case insensitive name, within the same region' do
    foo = regions(:metropolitana).provinces.first
    bar = regions(:metropolitana).provinces.second
    foo.name = bar.name
    assert_not foo.save
  end

  test 'could have the same name of a province in another region' do
    first = regions(:metropolitana).provinces.first
    second = regions(:del_biobio).provinces.first
    second.name = first.name
    assert second.save
  end

end
