require 'test_helper'

class ProductionCompaniesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get production_companies_show_url
    assert_response :success
  end

  test "should get create" do
    get production_companies_create_url
    assert_response :success
  end

  test "should get new" do
    get production_companies_new_url
    assert_response :success
  end

  test "should get update" do
    get production_companies_update_url
    assert_response :success
  end

  test "should get edit" do
    get production_companies_edit_url
    assert_response :success
  end

  test "should get delete" do
    get production_companies_delete_url
    assert_response :success
  end

end
