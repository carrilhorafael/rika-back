class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.string :name
      t.string :description
      t.string :link_youtube
      t.string :schedule
      t.references :subject, foreign_key: true

      t.timestamps
    end
  end
end
