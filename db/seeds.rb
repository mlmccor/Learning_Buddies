# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create!(name: "Kenneth", email: "kenneth.young90@gmail.com", gender: "Male", age: 23, bio: "This is a bio", password: "topsecret", password_confirmation: "topsecret")
user2 = User.create!(name: "Gabriela", email: "gabs123@gmail.com", gender: "Female", age: 20, bio: "This is a bio", password: "topsecret", password_confirmation: "topsecret")
user3 = User.create!(name: "Roberto", email: "robs123@gmail.com", gender: "Male", age: 24, bio: "This is a bio", password: "topsecret", password_confirmation: "topsecret")

liked_users1 = LikedUser.create(original_user_id: 1, liked_user_id: 2)
liked_users2 = LikedUser.create(original_user_id: 1, liked_user_id: 3)
liked_users3 = LikedUser.create(original_user_id: 2, liked_user_id: 1)
liked_users4 = LikedUser.create(original_user_id: 3, liked_user_id: 1)

matched_users1 = MatchedUser.create(user1_id: 1, user2_id: 2)
matched_users2 = MatchedUser.create(user1_id: 1, user2_id: 3)
# matched_users3 = MatchedUser.create(user1_id: 2, user2_id: 1)
# matched_users4 = MatchedUser.create(user1_id: 3, user2_id: 1)



skill1 = Skill.create(name: "Javascript")
skill2 = Skill.create(name: "Forex Trading")

resource1 = Resource.create(name: "Udemy")
resource2 = Resource.create(name: "Babypips")

resource_skill1 = ResourceSkill.create(skill_id: 1, resource_id: 1)
resource_skill2 = ResourceSkill.create(skill_id: 2, resource_id: 2)

user_skill1 = UserSkill.create(user_id: 1, skill_id: 1, mastery: "intermediate")
user_skill2 = UserSkill.create(user_id: 1, skill_id: 2, mastery: "beginner")

user_skill3 = UserSkill.create(user_id: 2, skill_id: 1, mastery: "beginner")
user_skill4 = UserSkill.create(user_id: 2, skill_id: 2, mastery: "beginner")

user_skill5 = UserSkill.create(user_id: 3, skill_id: 1, mastery: "beginner")
user_skill6 = UserSkill.create(user_id: 3, skill_id: 2, mastery: "beginner")

