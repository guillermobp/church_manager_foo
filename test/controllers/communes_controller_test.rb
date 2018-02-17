require 'test_helper'

class CommunesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get communes_index_url
    assert_response :success
  end

  test "should get show" do
    get communes_show_url
    assert_response :success
  end

end
