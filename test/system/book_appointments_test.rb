require "application_system_test_case"

class BookAppointmentsTest < ApplicationSystemTestCase
  setup do
    @book_appointment = book_appointments(:one)
  end

  test "visiting the index" do
    visit book_appointments_url
    assert_selector "h1", text: "Book appointments"
  end

  test "should create book appointment" do
    visit book_appointments_url
    click_on "New book appointment"

    fill_in "Email", with: @book_appointment.Email
    fill_in "Firstname", with: @book_appointment.FirstName
    fill_in "Lastname", with: @book_appointment.LastName
    fill_in "Bookid", with: @book_appointment.bookid
    fill_in "End time", with: @book_appointment.end_time
    fill_in "Password", with: @book_appointment.password
    fill_in "Start time", with: @book_appointment.start_time
    fill_in "Telephon", with: @book_appointment.telephon
    fill_in "User", with: @book_appointment.user_id
    click_on "Create Book appointment"

    assert_text "Book appointment was successfully created"
    click_on "Back"
  end

  test "should update Book appointment" do
    visit book_appointment_url(@book_appointment)
    click_on "Edit this book appointment", match: :first

    fill_in "Email", with: @book_appointment.Email
    fill_in "Firstname", with: @book_appointment.FirstName
    fill_in "Lastname", with: @book_appointment.LastName
    fill_in "Bookid", with: @book_appointment.bookid
    fill_in "End time", with: @book_appointment.end_time
    fill_in "Password", with: @book_appointment.password
    fill_in "Start time", with: @book_appointment.start_time
    fill_in "Telephon", with: @book_appointment.telephon
    fill_in "User", with: @book_appointment.user_id
    click_on "Update Book appointment"

    assert_text "Book appointment was successfully updated"
    click_on "Back"
  end

  test "should destroy Book appointment" do
    visit book_appointment_url(@book_appointment)
    click_on "Destroy this book appointment", match: :first

    assert_text "Book appointment was successfully destroyed"
  end
end
