require 'test_helper'

class PrivateAuditionsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get private_auditions_show_url
    assert_response :success
  end

  test "should get new" do
    get private_auditions_new_url
    assert_response :success
  end

  test "should get create" do
    get private_auditions_create_url
    assert_response :success
  end

end
