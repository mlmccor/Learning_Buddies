class Resource < ApplicationRecord
    has_many :resource_skills
    has_many :skills, through: :resource_skills
end
