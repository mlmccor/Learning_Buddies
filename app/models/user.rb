class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: JwtBlacklist

  has_many :original_users, class_name: 'LikedUser', foreign_key: :original_user_id
  has_many :liked_users, class_name: 'LikedUser', foreign_key: :liked_user_id
end
