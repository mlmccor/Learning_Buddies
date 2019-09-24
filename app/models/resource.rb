class Resource < ApplicationRecord
    has_many :user_skill_resources
    has_many :user_skills, through: :user_skill_resources
    has_many :users, through: :user_skills

    has_many :skills, -> { distinct }, through: :user_skills
  
end
