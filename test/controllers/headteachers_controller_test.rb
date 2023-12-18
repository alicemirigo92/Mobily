require "test_helper"

class HeadteachersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @headteacher = headteachers(:one)
  end

  test "should get index" do
    get headteachers_url, as: :json
    assert_response :success
  end

  test "should create headteacher" do
    assert_difference("Headteacher.count") do
      post headteachers_url, params: { headteacher: { school_id: @headteacher.school_id, user_id: @headteacher.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show headteacher" do
    get headteacher_url(@headteacher), as: :json
    assert_response :success
  end

  test "should update headteacher" do
    patch headteacher_url(@headteacher), params: { headteacher: { school_id: @headteacher.school_id, user_id: @headteacher.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy headteacher" do
    assert_difference("Headteacher.count", -1) do
      delete headteacher_url(@headteacher), as: :json
    end

    assert_response :no_content
  end
end
