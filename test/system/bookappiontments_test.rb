require "application_system_test_case"

class BookappiontmentsTest < ApplicationSystemTestCase
  setup do
    @bookappiontment = bookappiontments(:one)
  end

  test "visiting the index" do
    visit bookappiontments_url
    assert_selector "h1", text: "Bookappiontments"
  end

  test "should create bookappiontment" do
    visit bookappiontments_url
    click_on "New bookappiontment"

    fill_in "Bookid", with: @bookappiontment.Bookid
    fill_in "Email", with: @bookappiontment.Email
    fill_in "Firstname", with: @bookappiontment.FirstName
    fill_in "Lastname", with: @bookappiontment.LastName
    fill_in "End time", with: @bookappiontment.end_time
    fill_in "Start time", with: @bookappiontment.start_time
    fill_in "Telephone", with: @bookappiontment.telephone
    fill_in "User", with: @bookappiontment.user_id
    click_on "Create Bookappiontment"

    assert_text "Bookappiontment was successfully created"
    click_on "Back"
  end

  test "should update Bookappiontment" do
    visit bookappiontment_url(@bookappiontment)
    click_on "Edit this bookappiontment", match: :first

    fill_in "Bookid", with: @bookappiontment.Bookid
    fill_in "Email", with: @bookappiontment.Email
    fill_in "Firstname", with: @bookappiontment.FirstName
    fill_in "Lastname", with: @bookappiontment.LastName
    fill_in "End time", with: @bookappiontment.end_time
    fill_in "Start time", with: @bookappiontment.start_time
    fill_in "Telephone", with: @bookappiontment.telephone
    fill_in "User", with: @bookappiontment.user_id
    click_on "Update Bookappiontment"

    assert_text "Bookappiontment was successfully updated"
    click_on "Back"
  end

  test "should destroy Bookappiontment" do
    visit bookappiontment_url(@bookappiontment)
    click_on "Destroy this bookappiontment", match: :first

    assert_text "Bookappiontment was successfully destroyed"
  end
end
