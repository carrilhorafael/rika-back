class CreateAssignmentFeedbacks < ActiveRecord::Migration[5.2]
  def change
    create_table :assignment_feedbacks do |t|
      t.string :content
      t.integer :grade
      t.references :assignment, foreign_key: true

      t.timestamps
    end
  end
end
