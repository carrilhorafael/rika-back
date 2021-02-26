class CreateHomeworks < ActiveRecord::Migration[5.2]
  def change
    create_table :homeworks do |t|
      t.string :description
      t.references :lesson, foreign_key: true

      t.timestamps
    end
  end
end
