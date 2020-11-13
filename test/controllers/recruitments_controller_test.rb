require 'test_helper'

class RecruitmentControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get recruitment_index_url
    assert_response :success
  end

  test "should get new" do
    get recruitment_new_url
    assert_response :success
  end

  test "should get show" do
    get recruitment_show_url
    assert_response :success
  end

  test "should get edit" do
    get recruitment_edit_url
    assert_response :success
  end

end
