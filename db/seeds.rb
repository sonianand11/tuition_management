# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


(1..10).each do |i|
  User.find_or_create_by(email: "user#{i}@example.com") do |user|
    user.name = "User#{i}"
    user.password = "change"
  end
end

tuitions = [{title: "Title1", description: "This is description", meeting_link: "http://example.com", user_id: User.first.id, start_at: DateTime.now, end_at: DateTime.now + 2.hours}]

Tuition.create(tuitions)