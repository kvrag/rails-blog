require 'faker'

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
    body: Faker::Lorem.paragraph(8),
    user_id: User.all.sample.id
    )
end


15.times do
  comment = Comment.create(
    name: Faker::StarWars.character,
    body: Faker::StarWars.wookiee_sentence,
    user_id: User.all.sample.id,
    post_id: Post.all.sample.id
    )
end


