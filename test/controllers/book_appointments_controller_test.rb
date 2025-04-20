require "test_helper"

class BookAppointmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book_appointment = book_appointments(:one)
  end

  test "should get index" do
    get book_appointments_url
    assert_response :success
  end

  test "should get new" do
    get new_book_appointment_url
    assert_response :success
  end

  test "should create book_appointment" do
    assert_difference("BookAppointment.count") do
      post book_appointments_url, params: { book_appointment: { Email: @book_appointment.Email, FirstName: @book_appointment.FirstName, LastName: @book_appointment.LastName, bookid: @book_appointment.bookid, end_time: @book_appointment.end_time, password: @book_appointment.password, start_time: @book_appointment.start_time, telephon: @book_appointment.telephon, user_id: @book_appointment.user_id } }
    end

    assert_redirected_to book_appointment_url(BookAppointment.last)
  end

  test "should show book_appointment" do
    get book_appointment_url(@book_appointment)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_appointment_url(@book_appointment)
    assert_response :success
  end

  test "should update book_appointment" do
    patch book_appointment_url(@book_appointment), params: { book_appointment: { Email: @book_appointment.Email, FirstName: @book_appointment.FirstName, LastName: @book_appointment.LastName, bookid: @book_appointment.bookid, end_time: @book_appointment.end_time, password: @book_appointment.password, start_time: @book_appointment.start_time, telephon: @book_appointment.telephon, user_id: @book_appointment.user_id } }
    assert_redirected_to book_appointment_url(@book_appointment)
  end

  test "should destroy book_appointment" do
    assert_difference("BookAppointment.count", -1) do
      delete book_appointment_url(@book_appointment)
    end

    assert_redirected_to book_appointments_url
  end
end
