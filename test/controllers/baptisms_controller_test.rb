require 'test_helper'

class BaptismsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get baptisms_index_url
    assert_response :success
  end

  test "should get create" do
    get baptisms_create_url
    assert_response :success
  end

  test "should get new" do
    get baptisms_new_url
    assert_response :success
  end

  test "should get edit" do
    get baptisms_edit_url
    assert_response :success
  end

  test "should get show" do
    get baptisms_show_url
    assert_response :success
  end

  test "should get update" do
    get baptisms_update_url
    assert_response :success
  end

  test "should get destroy" do
    get baptisms_destroy_url
    assert_response :success
  end

end
