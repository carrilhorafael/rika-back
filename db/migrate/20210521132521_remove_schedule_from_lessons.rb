class RemoveScheduleFromLessons < ActiveRecord::Migration[5.2]
  def change
    remove_column :lessons, :schedule, :datetime
  end
end
