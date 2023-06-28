class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :title
      t.string :description
      t.references :instructor, null: false, foreign_key: { to_table: :users }
      t.jsonb :tags, default: []
      t.jsonb :stars, default: []

      t.timestamps
    end
  end
end
