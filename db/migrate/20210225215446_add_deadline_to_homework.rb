class AddDeadlineToHomework < ActiveRecord::Migration[5.2]
  def change
    add_column :homeworks, :deadline, :datetime
  end
end
