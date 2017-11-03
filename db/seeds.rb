cnt = 0
100.times do |n|
  email = Faker::Internet.email
  uid = SecureRandom.uuid
  password = "password"
  User.create!(email: email,
              password: password,
              password_confirmation: password,
              name: "test" + cnt.to_s,
              uid: uid,
              confirmed_at: Time.now
              )
  cnt += 1
end

n = 208

while n <= 308
  if n < 218
    Topic.create(
      title: "あああ",
      content: "hogeaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
      image: File.open("./app/assets/images/404.png"),
      user_id: n,
    )
  elsif n < 228
    Topic.create(
      title: "あああ",
      content: "hogeaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
      image: File.open("./app/assets/images/girls.png"),
      user_id: n,
    )
  elsif n < 238
    Topic.create(
      title: "あああ",
      content: "hogeaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
      image: File.open("./app/assets/images/thumb_key.png"),
      user_id: n,
    )
  elsif n < 248
    Topic.create(
      title: "あああ",
      content: "hogeaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
      aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
      aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
      image: File.open("./app/assets/images/header.jpg"),
      user_id: n,
    )
  else
    Topic.create(
      title: "あああ",
      content: "hogeaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
      aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
      aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
      user_id: n,
    )
  end


  n = n + 1
end
