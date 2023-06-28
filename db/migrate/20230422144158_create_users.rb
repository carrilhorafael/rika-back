class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.integer :login_count, default: 0
      t.string :last_login_at

      t.timestamps
    end
  end
end
