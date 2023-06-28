class LessonAttachmentSerializer < ActiveModel::Serializer
  attributes :id, :file_url, :file_name, :file_size, :file_type
end
