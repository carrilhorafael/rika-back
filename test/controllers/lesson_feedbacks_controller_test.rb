require 'test_helper'

class LessonFeedbacksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lesson_feedback = lesson_feedbacks(:one)
  end

  test "should get index" do
    get lesson_feedbacks_url, as: :json
    assert_response :success
  end

  test "should create lesson_feedback" do
    assert_difference('LessonFeedback.count') do
      post lesson_feedbacks_url, params: { lesson_feedback: { content: @lesson_feedback.content, lesson_id: @lesson_feedback.lesson_id, user_id: @lesson_feedback.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show lesson_feedback" do
    get lesson_feedback_url(@lesson_feedback), as: :json
    assert_response :success
  end

  test "should update lesson_feedback" do
    patch lesson_feedback_url(@lesson_feedback), params: { lesson_feedback: { content: @lesson_feedback.content, lesson_id: @lesson_feedback.lesson_id, user_id: @lesson_feedback.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy lesson_feedback" do
    assert_difference('LessonFeedback.count', -1) do
      delete lesson_feedback_url(@lesson_feedback), as: :json
    end

    assert_response 204
  end
end
