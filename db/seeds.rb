10.times do |i|
  age = rand(1..100)
  User.create!(
    email: "test_#{i}@example.com",
    name: "name_#{i}",
    gender: User.genders_i18n.keys.sample,
    age: age,
    tel: "09012345678",
    birth_date: Time.zone.now - age.year
  )
end
