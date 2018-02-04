require 'test_helper'

class EmailTest < ActiveSupport::TestCase

  test 'should not be saved without a contact' do
    email = emails(:one)
    email.contact = nil
    assert_not email.save
  end

  test 'should not be saved without an address' do
    email = emails(:one)
    email.address = nil
    assert_not email.save
  end

  test 'should not be saved with a blank address' do
    email = emails(:one)
    email.address = ' '
    assert_not email.save
  end

  test 'should not be saved with an invalid address' do
    email = emails(:one)
    [
      'plainaddress',
      '#@%^%#$@#$@#.com',
      '@example.com',
      # 'Joe Smith <email@example.com>',
      'email.example.com',
      'email@example@example.com',
      # '.email@example.com',
      # 'email.@example.com',
      # 'email..email@example.com',
      # 'あいうえお@example.com',
      # 'email@example.com (Joe Smith)',
      'email@example',
      # 'email@-example.com',
      # 'email@example.web',
      # 'email@111.222.333.44444',
      'email@example..com',
      #'Abc..123@example.com'
    ].each do |address|
      email.address = address
      assert_not email.save
    end
  end

  test 'should be saved with a valid address' do
    email = emails(:one)
    [
      'email@example.com',
      'firstname.lastname@example.com',
      'email@subdomain.example.com',
      'firstname+lastname@example.com',
      'email@123.123.123.123',
      'email@[123.123.123.123]',
      '"email"@example.com',
      '1234567890@example.com',
      'email@example-one.com',
      '_______@example.com',
      'email@example.name',
      'email@example.museum',
      'email@example.co.jp',
      'firstname-lastname@example.com'
    ].each do |address|
      email.address = address
      assert email.save
    end
  end

end
