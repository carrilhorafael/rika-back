class LessonFeedbackSerializer < ActiveModel::Serializer
  attributes :id, :lesson_grade, :lesson_feedback, :instructor_feedback, :instructor_grade, :monitors_feedback, :monitors_grade
  has_one :user
  has_one :lesson
end
