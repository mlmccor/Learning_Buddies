class MatchedUser < ApplicationRecord
    has_many :user1s, class_name: 'User', foreign_key: :user1_id
    has_many :user2s, class_name: 'User', foreign_key: :user2_id
end
