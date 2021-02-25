class LessonSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :link_youtube, :schedule
  has_one :subject
end
