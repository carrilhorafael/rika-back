class RemoveContentFromLesson < ActiveRecord::Migration[7.0]
  def change
    remove_column :lessons, :content, :text
    add_column :lessons, :contents, :jsonb, default: []
  end
end
