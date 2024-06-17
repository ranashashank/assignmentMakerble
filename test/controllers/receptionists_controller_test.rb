require "test_helper"

class ReceptionistsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get receptionists_index_url
    assert_response :success
  end

  test "should get new" do
    get receptionists_new_url
    assert_response :success
  end

  test "should get create" do
    get receptionists_create_url
    assert_response :success
  end

  test "should get edit" do
    get receptionists_edit_url
    assert_response :success
  end

  test "should get update" do
    get receptionists_update_url
    assert_response :success
  end

  test "should get destroy" do
    get receptionists_destroy_url
    assert_response :success
  end
end
