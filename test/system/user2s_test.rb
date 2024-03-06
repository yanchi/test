require "application_system_test_case"

class User2sTest < ApplicationSystemTestCase
  setup do
    @user2 = user2s(:one)
  end

  test "visiting the index" do
    visit user2s_url
    assert_selector "h1", text: "User2s"
  end

  test "should create user2" do
    visit user2s_url
    click_on "New user2"

    fill_in "Email", with: @user2.email
    fill_in "Name", with: @user2.name
    click_on "Create User2"

    assert_text "User2 was successfully created"
    click_on "Back"
  end

  test "should update User2" do
    visit user2_url(@user2)
    click_on "Edit this user2", match: :first

    fill_in "Email", with: @user2.email
    fill_in "Name", with: @user2.name
    click_on "Update User2"

    assert_text "User2 was successfully updated"
    click_on "Back"
  end

  test "should destroy User2" do
    visit user2_url(@user2)
    click_on "Destroy this user2", match: :first

    assert_text "User2 was successfully destroyed"
  end
end
