require 'test_helper'

class PokemonControllerTest < ActionDispatch::IntegrationTest
  test "should get show_details" do
    get pokemon_show_details_url
    assert_response :success
  end

  test "should get create_form" do
    get pokemon_create_form_url
    assert_response :success
  end

  test "should get create" do
    get pokemon_create_url
    assert_response :success
  end

  test "should get update_form" do
    get pokemon_update_form_url
    assert_response :success
  end

  test "should get update" do
    get pokemon_update_url
    assert_response :success
  end

  test "should get delete" do
    get pokemon_delete_url
    assert_response :success
  end

end
