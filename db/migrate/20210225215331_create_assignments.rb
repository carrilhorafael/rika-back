class CreateAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :assignments do |t|
      t.references :user, foreign_key: true
      t.string :gitlab_link
      t.references :homework, foreign_key: true
      t.integer :delay_days

      t.timestamps
    end
  end
end
