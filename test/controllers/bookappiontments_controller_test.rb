require "test_helper"

class BookappiontmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bookappiontment = bookappiontments(:one)
  end

  test "should get index" do
    get bookappiontments_url
    assert_response :success
  end

  test "should get new" do
    get new_bookappiontment_url
    assert_response :success
  end

  test "should create bookappiontment" do
    assert_difference("Bookappiontment.count") do
      post bookappiontments_url, params: { bookappiontment: { Bookid: @bookappiontment.Bookid, Email: @bookappiontment.Email, FirstName: @bookappiontment.FirstName, LastName: @bookappiontment.LastName, end_time: @bookappiontment.end_time, start_time: @bookappiontment.start_time, telephone: @bookappiontment.telephone, user_id: @bookappiontment.user_id } }
    end

    assert_redirected_to bookappiontment_url(Bookappiontment.last)
  end

  test "should show bookappiontment" do
    get bookappiontment_url(@bookappiontment)
    assert_response :success
  end

  test "should get edit" do
    get edit_bookappiontment_url(@bookappiontment)
    assert_response :success
  end

  test "should update bookappiontment" do
    patch bookappiontment_url(@bookappiontment), params: { bookappiontment: { Bookid: @bookappiontment.Bookid, Email: @bookappiontment.Email, FirstName: @bookappiontment.FirstName, LastName: @bookappiontment.LastName, end_time: @bookappiontment.end_time, start_time: @bookappiontment.start_time, telephone: @bookappiontment.telephone, user_id: @bookappiontment.user_id } }
    assert_redirected_to bookappiontment_url(@bookappiontment)
  end

  test "should destroy bookappiontment" do
    assert_difference("Bookappiontment.count", -1) do
      delete bookappiontment_url(@bookappiontment)
    end

    assert_redirected_to bookappiontments_url
  end
end
