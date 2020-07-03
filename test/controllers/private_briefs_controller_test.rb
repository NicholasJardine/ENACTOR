require 'test_helper'

class PrivateBriefsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get private_briefs_show_url
    assert_response :success
  end

  test "should get new" do
    get private_briefs_new_url
    assert_response :success
  end

  test "should get create" do
    get private_briefs_create_url
    assert_response :success
  end

end
