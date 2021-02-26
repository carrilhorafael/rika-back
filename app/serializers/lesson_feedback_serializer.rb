class LessonFeedbackSerializer < ActiveModel::Serializer
  attributes :id, :content
  has_one :user
  has_one :lesson
end
