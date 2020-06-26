require 'test_helper'

class UserAuditionsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get user_auditions_create_url
    assert_response :success
  end

  test "should get destroy" do
    get user_auditions_destroy_url
    assert_response :success
  end

  test "should get accept" do
    get user_auditions_accept_url
    assert_response :success
  end

  test "should get decline" do
    get user_auditions_decline_url
    assert_response :success
  end

end
