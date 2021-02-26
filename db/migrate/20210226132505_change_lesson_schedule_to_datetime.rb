class ChangeLessonScheduleToDatetime < ActiveRecord::Migration[5.2]
  def change
    remove_column :lessons, :schedule
    add_column :lessons, :schedule, :datetime
  end
end
