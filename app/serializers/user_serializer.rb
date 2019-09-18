class UserSerializer < ActiveModel::Serializer
  attributes :id, :liked_users

  def liked_users 
    return object.liked_users

  end 
end
