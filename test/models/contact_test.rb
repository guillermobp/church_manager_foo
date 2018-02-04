require 'test_helper'

class ContactTest < ActiveSupport::TestCase

  test 'should not be saved without a church' do
    contact = contacts(:one)
    contact.church = nil
    assert_not contact.save
  end

  test 'should not be saved without the full name' do
    contact = contacts(:one)
    contact.full_name = nil
    assert_not contact.save
  end

  test 'should not be saved with a blank full name' do
    contact = contacts(:one)
    contact.full_name = ' '
    assert_not contact.save
  end

end
