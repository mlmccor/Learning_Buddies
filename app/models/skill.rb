class Skill < ApplicationRecord
    has_many :user_skills
    has_many :users, -> { distinct }, through: :user_skills, foreign_key: :user_id

    has_many :resources, -> { distinct }, through: :user_skills, foreign_key: :skill_id
end
