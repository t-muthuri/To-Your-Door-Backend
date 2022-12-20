require 'faker'
Customer.destroy_all #(for a clean slate)
Meal.destroy_all

puts '...Seeding data'

5.times do |i|
    Customer.create!(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        username: Faker::Internet.username,
        email: Faker::Internet.email,
        password: "hello",
        password_confirmation: "hello"
    )
  puts "Created #{Customer.count} customers"
end

10.times do |i|
    Meal.create!(
        name: Faker::Food.dish,
        description: Faker::Food.description,
        price: Faker::Number.binary(digits: 4),
        category: Faker::Food.dish,
        img_url: "https://i0.wp.com/images-prod.healthline.com/hlcmsresource/images/AN_images/healthy-eating-ingredients-1296x728-header.jpg?w=1155&h=1528"
    )
  puts "Created #{Meal.count} meals"
end

puts '...Done seeding!'