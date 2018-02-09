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

  test 'should not save contact if main email is not one of her emails' do
    contact = contacts(:one)
    contact.main_email = contacts(:two).main_email
    assert_not contact.save
  end

  test 'should save contact if main email is one of her emails' do
    contact = contacts(:one)
    contact.main_email = contact.emails.first
    assert contact.save
  end

  test 'should not save contact if main phone is not one of her phones' do
    contact = contacts(:one)
    contact.main_phone = contacts(:two).main_phone
    assert_not contact.save
  end

  test 'should save contact if main phone is one of her phones' do
    contact = contacts(:one)
    contact.main_phone = contact.phones.first
    assert contact.save
  end

end
