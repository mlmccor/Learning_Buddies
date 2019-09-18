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

