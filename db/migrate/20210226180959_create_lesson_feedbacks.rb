class CreateLessonFeedbacks < ActiveRecord::Migration[5.2]
  def change
    create_table :lesson_feedbacks do |t|
      t.references :user, foreign_key: true
      t.references :lesson, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
