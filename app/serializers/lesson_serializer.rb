class LessonSerializer < ActiveModel::Serializer
  class Show < LessonSerializer
    attributes :id, :title, :contents
    has_one :course
    has_many :attachments
  end

  attributes :id, :title
end
