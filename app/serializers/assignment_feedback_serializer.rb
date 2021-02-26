class AssignmentFeedbackSerializer < ActiveModel::Serializer
  attributes :id, :content, :grade, :author
  def author
    self.object.user
  end
end
