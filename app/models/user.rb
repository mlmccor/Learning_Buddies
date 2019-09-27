class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: JwtBlacklist

  # has_many :original_users, class_name: 'LikedUser', foreign_key: :liked_user_id
  has_many :user_skills
  has_many :skills, -> { distinct }, through: :user_skills

  has_many :liked_users, class_name: 'LikedUser', foreign_key: :original_user_id
  
  has_many :resources, -> { distinct }, through: :user_skills

  def matched_users
    MatchedUser.where("user1_id = ? OR user2_id = ?", self.id, self.id)
  end

  def messages
    Message.where("sender_id = ? OR receiver_id = ?", self.id, self.id)
  end

  def on_jwt_dispatch(token, payload)
    byebug
    this.token = token
  end
end
