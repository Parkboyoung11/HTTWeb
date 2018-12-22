User.create!(name:  "Aki Adagaki",
             email: "aki@yopmail.com",
             password: "aki2412",
             password_confirmation: "aki2412",
             is_admin: true,
             is_actived: true,
             activated_at: Time.zone.now,
             is_deleted: false)

50.times do |n|
  name  = Faker::SwordArtOnline.real_name
  email = "sao#{n + 1}@yopmail.com"
  password = "aki2412"
  User.create!(name:  name,
               email: email,
               password: password,
               password_confirmation: password,
               is_actived: true,
               activated_at: Time.zone.now,
               is_deleted: false)
end

users = User.order(:created_at).take(6)
50.times do
  title = Faker::Lorem.sentence(1)
  content = Faker::Lorem.paragraph
  users.each {|user| user.reviews.create!(title:title, content: content)}
end
