class RemoveNameFromLesson < ActiveRecord::Migration[5.2]
  def change
    remove_column :lessons, :name, :string
  end
end
