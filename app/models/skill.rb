class Skill < ApplicationRecord
    has_many :user_skills
    has_many :users, through: :user_skills

    has_many :resource_skills
    has_many :resources, through: :resource_skills
end
