class CreateLikedUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :liked_users do |t|
      t.integer :original_user_id
      t.integer :liked_user_id

      t.timestamps
    end
  end
end
