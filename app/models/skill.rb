class Skill < ApplicationRecord
    has_many :user_skills
    has_many :users, through: :user_skills

    # has_many :resource_skills
    # has_many :resources, through: :resource_skills

    has_many :user_skill_resources, through: :user_skills
    has_many :resources, -> { distinct }, through: :user_skill_resources
end
