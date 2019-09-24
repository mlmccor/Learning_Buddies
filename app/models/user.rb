class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: JwtBlacklist

  # has_many :original_users, class_name: 'LikedUser', foreign_key: :liked_user_id
  has_many :user_skills
  has_many :skills, through: :user_skills

  has_many :liked_users, class_name: 'LikedUser', foreign_key: :original_user_id
  
  def matched_users
    MatchedUser.where("user1_id = ? OR user2_id = ?", self.id, self.id)
  end

  def messages
    Message.where("sender_id = ? OR receiver_id = ?", self.id, self.id)
  end
end
