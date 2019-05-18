require 'test_helper'

class MembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @member = members(:one)
  end

  test "should get index" do
    get members_url
    assert_response :success
  end

  test "should get new" do
    get new_member_url
    assert_response :success
  end

  test "should create member" do
    assert_difference('Member.count') do
      post members_url, params: { member: { age: @member.age, bio: @member.bio, fb_link: @member.fb_link, insta_link: @member.insta_link, last_name: @member.last_name, lnk_link: @member.lnk_link, name: @member.name, nick: @member.nick, rol: @member.rol } }
    end

    assert_redirected_to member_url(Member.last)
  end

  test "should show member" do
    get member_url(@member)
    assert_response :success
  end

  test "should get edit" do
    get edit_member_url(@member)
    assert_response :success
  end

  test "should update member" do
    patch member_url(@member), params: { member: { age: @member.age, bio: @member.bio, fb_link: @member.fb_link, insta_link: @member.insta_link, last_name: @member.last_name, lnk_link: @member.lnk_link, name: @member.name, nick: @member.nick, rol: @member.rol } }
    assert_redirected_to member_url(@member)
  end

  test "should destroy member" do
    assert_difference('Member.count', -1) do
      delete member_url(@member)
    end

    assert_redirected_to members_url
  end
end
