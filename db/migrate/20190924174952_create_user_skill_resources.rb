class CreateUserSkillResources < ActiveRecord::Migration[5.2]
  def change
    create_table :user_skill_resources do |t|
      t.integer :user_skill_id
      t.integer :resource_id

      t.timestamps
    end
  end
end
