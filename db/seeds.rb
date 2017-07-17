# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
require 'faker' 
require 'bcrypt'

until User.count == 5
  user = User.new(
    username: Faker::StarWars.specie,
    email: Faker::Internet.safe_email(Faker::Hacker.noun)
    )
  user.password = Faker::Lorem.word
  user.save
end

8.times do 
  post = Post.create(
    title: Faker::StarWars.quote,
    body: Faker::Lorem.paragraph(8)
    )
end


15.times do 
  comment = Comment.create(
    name: Faker::StarWars.character,
    body: Faker::StarWars.wookiee_sentence,
    post_id: Post.all.sample.id
    )
end


