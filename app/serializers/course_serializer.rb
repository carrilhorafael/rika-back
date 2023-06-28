class CourseSerializer < ActiveModel::Serializer
  attributes :id, :title, :description
  has_one :instructor
  has_many :lessons
end
