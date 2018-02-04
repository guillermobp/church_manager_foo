require 'test_helper'

class ChurchTest < ActiveSupport::TestCase

  test 'should not be saved without a name' do
    church = churches(:anunciacion)
    church.name = nil
    assert_not church.save
  end

  test 'should not be saved with a blank name' do
    church = churches(:anunciacion)
    church.name = ' '
    assert_not church.save
  end

end
