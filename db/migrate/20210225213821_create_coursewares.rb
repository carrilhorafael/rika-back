class CreateCoursewares < ActiveRecord::Migration[5.2]
  def change
    create_table :coursewares do |t|
      t.string :content
      t.references :lesson, foreign_key: true

      t.timestamps
    end
  end
end
