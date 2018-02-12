require 'test_helper'

class PersonTest < ActiveSupport::TestCase

  test 'should not be saved without a first name' do
    person = people(:one)
    person.first_name = nil
    assert_not person.save
  end

  test 'should not be saved without a last name' do
    person = people(:one)
    person.last_name = nil
    assert_not person.save
  end

  test 'should not be saved with a blank first name' do
    person = people(:one)
    person.first_name = ' '
    assert_not person.save
  end

  test 'should not be saved with a blank last name' do
    person = people(:one)
    person.last_name = ' '
    assert_not person.save
  end

end
