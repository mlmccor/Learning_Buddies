class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :name, :age, :gender, :bio, :liked_users

  def liked_users 
    
    users = object.liked_users.collect do |liked_user|
      # user = User.find_by(id: liked_user.liked_user_id)
      # user.attributes.except!("created_at", :updated_at, :email)
      user = User.select(:id, :name, :gender, :age, :bio).find_by(id: liked_user.liked_user_id)
    end

  end 
end
