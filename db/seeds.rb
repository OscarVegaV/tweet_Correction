
karl = User.create!(name: 'Karl', picture: 'https://karlheitmann.github.io/assets/img/yo_terraza.jpg', email: 'karl@example.com', password: 'asdasd')

50.times do |i|
  Tweet.create!(user_id: karl.id, content: Faker::Lorem.paragraph(sentence_count: 2))
end

10.times do |j|
  user = User.create!(name: "user #{j}", picture: 'https://picsum.photos/200/300', email: "user#{j}@example.com", password: 'asdasd')

  50.times do |i|
    Tweet.create!(user_id: user.id, content: Faker::Lorem.paragraph(sentence_count: 2))
  end
end
#AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development? 
