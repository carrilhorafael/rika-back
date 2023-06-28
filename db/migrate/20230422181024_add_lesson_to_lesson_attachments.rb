class AddLessonToLessonAttachments < ActiveRecord::Migration[7.0]
  def change
    add_reference :lesson_attachments, :lesson, null: false, foreign_key: true
    remove_column :lesson_attachments, :file_name
    remove_column :lesson_attachments, :file_size
  end
end
