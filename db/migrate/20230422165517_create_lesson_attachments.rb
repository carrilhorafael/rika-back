class CreateLessonAttachments < ActiveRecord::Migration[7.0]
  def change
    create_table :lesson_attachments do |t|
      t.string :file_name
      t.string :file_size

      t.timestamps
    end
  end
end
