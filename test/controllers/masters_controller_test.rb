require 'test_helper'

class MastersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get masters_index_url
    assert_response :success
  end

  test "should get create" do
    get masters_create_url
    assert_response :success
  end

  test "should get new" do
    get masters_new_url
    assert_response :success
  end

  test "should get edit" do
    get masters_edit_url
    assert_response :success
  end

  test "should get show" do
    get masters_show_url
    assert_response :success
  end

  test "should get update" do
    get masters_update_url
    assert_response :success
  end

  test "should get destroy" do
    get masters_destroy_url
    assert_response :success
  end

end
