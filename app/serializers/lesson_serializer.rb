class LessonSerializer < ActiveModel::Serializer
  attributes :id, :description, :link_youtube, :schedule
  has_one :subject
  has_one :homework
  has_many :coursewares
  has_many :lesson_feedbacks
end
