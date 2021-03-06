require "application_system_test_case"

class MembersTest < ApplicationSystemTestCase
  setup do
    @member = members(:one)
  end

  test "visiting the index" do
    visit members_url
    assert_selector "h1", text: "Members"
  end

  test "creating a Member" do
    visit members_url
    click_on "New Member"

    fill_in "Age", with: @member.age
    fill_in "Bio", with: @member.bio
    fill_in "Fb link", with: @member.fb_link
    fill_in "Insta link", with: @member.insta_link
    fill_in "Last name", with: @member.last_name
    fill_in "Lnk link", with: @member.lnk_link
    fill_in "Name", with: @member.name
    fill_in "Nick", with: @member.nick
    fill_in "Rol", with: @member.rol
    click_on "Create Member"

    assert_text "Member was successfully created"
    click_on "Back"
  end

  test "updating a Member" do
    visit members_url
    click_on "Edit", match: :first

    fill_in "Age", with: @member.age
    fill_in "Bio", with: @member.bio
    fill_in "Fb link", with: @member.fb_link
    fill_in "Insta link", with: @member.insta_link
    fill_in "Last name", with: @member.last_name
    fill_in "Lnk link", with: @member.lnk_link
    fill_in "Name", with: @member.name
    fill_in "Nick", with: @member.nick
    fill_in "Rol", with: @member.rol
    click_on "Update Member"

    assert_text "Member was successfully updated"
    click_on "Back"
  end

  test "destroying a Member" do
    visit members_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Member was successfully destroyed"
  end
end
