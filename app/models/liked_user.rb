class LikedUser < ApplicationRecord
    belongs_to :original_user, class_name: "User"
    belongs_to :liked_user, class_name: "User"
end
