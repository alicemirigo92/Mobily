require "test_helper"

class DeputyHeadteachersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @deputy_headteacher = deputy_headteachers(:one)
  end

  test "should get index" do
    get deputy_headteachers_url, as: :json
    assert_response :success
  end

  test "should create deputy_headteacher" do
    assert_difference("DeputyHeadteacher.count") do
      post deputy_headteachers_url, params: { deputy_headteacher: { school_id: @deputy_headteacher.school_id, user_id: @deputy_headteacher.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show deputy_headteacher" do
    get deputy_headteacher_url(@deputy_headteacher), as: :json
    assert_response :success
  end

  test "should update deputy_headteacher" do
    patch deputy_headteacher_url(@deputy_headteacher), params: { deputy_headteacher: { school_id: @deputy_headteacher.school_id, user_id: @deputy_headteacher.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy deputy_headteacher" do
    assert_difference("DeputyHeadteacher.count", -1) do
      delete deputy_headteacher_url(@deputy_headteacher), as: :json
    end

    assert_response :no_content
  end
end
