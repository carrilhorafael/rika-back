class LessonAttachment < ApplicationRecord
  belongs_to :lesson
  has_one_attached :file

  def file_url
    Rails.application.routes.url_helpers.rails_blob_path(file, only_path: true)
  end

  def file_name
    file.filename.to_s
  end

  def file_size
    file.byte_size
  end

  def file_type
    file.content_type
  end
end
