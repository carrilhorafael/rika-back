class LessonSerializer < ActiveModel::Serializer
  attributes :id, :description, :link_youtube, :schedule
  has_one :subject
  has_many :courseware
end
