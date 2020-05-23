require 'test_helper'

class MembersControllerTest < ActionDispatch::IntegrationTest
  test "should get join_form" do
    get members_join_form_url
    assert_response :success
  end

  test "should get join" do
    get members_join_url
    assert_response :success
  end

  test "should get m_form" do
    get members_m_form_url
    assert_response :success
  end

  test "should get j_update" do
    get members_j_update_url
    assert_response :success
  end

  test "should get member_list" do
    get members_member_list_url
    assert_response :success
  end

  test "should get member_show" do
    get members_member_show_url
    assert_response :success
  end

  test "should get member_delete" do
    get members_member_delete_url
    assert_response :success
  end

end
