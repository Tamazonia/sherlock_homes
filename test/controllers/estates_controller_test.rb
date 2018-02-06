require 'test_helper'

class EstatesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get estates_index_url
    assert_response :success
  end

  test "should get show" do
    get estates_show_url
    assert_response :success
  end

  test "should get new" do
    get estates_new_url
    assert_response :success
  end

  test "should get create" do
    get estates_create_url
    assert_response :success
  end

  test "should get edit" do
    get estates_edit_url
    assert_response :success
  end

  test "should get update" do
    get estates_update_url
    assert_response :success
  end

  test "should get destroy" do
    get estates_destroy_url
    assert_response :success
  end

end