class AssignmentSerializer < ActiveModel::Serializer
  attributes :id, :gitlab_link, :delay_days
  has_one :user
  has_one :homework
end
