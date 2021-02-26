class AddUserToAssignmentFeedback < ActiveRecord::Migration[5.2]
  def change
    add_reference :assignment_feedbacks, :user, foreign_key: true
  end
end
