class AddFeedbackItemsToLessonFeedbacks < ActiveRecord::Migration[5.2]
  def change
    remove_column :lesson_feedbacks, :content
    add_column :lesson_feedbacks, :lesson_grade, :integer
    add_column :lesson_feedbacks, :lesson_feedback, :string
    add_column :lesson_feedbacks, :instructor_feedback, :string
    add_column :lesson_feedbacks, :instructor_grade, :integer
    add_column :lesson_feedbacks, :monitors_feedback, :string
    add_column :lesson_feedbacks, :monitors_grade, :integer

  end
end
