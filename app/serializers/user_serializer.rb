class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :name, :age, :gender, :bio, :liked_users, :messages, :matched_users, :skills
  
  has_many :skills, serializer: SkillSerializer 

  # def skills 
  #   user_skills = object.skills.collect do |skill|
  #     user_skill = skill
  #   end
    
  # end 



  def liked_users 
    users = object.liked_users.collect do |liked_user|
      # user = User.find_by(id: liked_user.liked_user_id)
      # user.attributes.except!("created_at", :updated_at, :email)
      user = User.select(:id, :name, :gender, :age, :bio).find_by(id: liked_user.liked_user_id)
    end
  end 

  def matched_users 
    users = object.matched_users.collect do |matched_user|
      matched_user_id = matched_user.user1_id == object.id ? matched_user.user2_id : matched_user.user1_id
      # user = User.find_by(id: liked_user.liked_user_id)
      # user.attributes.except!("created_at", :updated_at, :email)
      user = User.select(:id, :name, :gender, :age, :bio).find_by(id: matched_user_id)
    end
  end 

  # def messages
  #   messages = object.messages.collect do |messages|
  #     # user = User.find_by(id: liked_user.liked_user_id)
  #     # user.attributes.except!("created_at", :updated_at, :email)
  #     message = Message.select(:id, :receiver_id, :conversation_id, :message).find_by(id: matched_user.user2_id)
  #   end
  # end 

end
