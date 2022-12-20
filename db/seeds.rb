require 'faker'
Customer.destroy_all
Meal.destroy_all
Order.destroy_all
Restaurant.destroy_all
RestaurantMeal.destroy_all

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

10.times do |i|
    Order.create!(
        first_name: Faker::Name.first_name,
        username: Faker::Internet.username,
        phone_number: Faker::Number.leading_zero_number(digits: 10),
        region: Faker::Address.state,
        city: Faker::Address.city,
        delivery_address: Faker::Address.full_address,
        restaurant_id: 1,
        customer_id: 1, 
        ordered_on: 1.week.ago
    )
  puts "Created #{Order.count} orders"
end

6.times do |i|
    Restaurant.create!(
        name: Faker::Restaurant.name,
        review: Faker::Restaurant.review
    )
  puts "Created #{Restaurant.count} restaurants"
end

RestaurantMeal.create(meal_id: 1, restaurant_id: 1)
RestaurantMeal.create(meal_id: 2, restaurant_id: 2)
RestaurantMeal.create(meal_id: 3, restaurant_id: 3)
RestaurantMeal.create(meal_id: 4, restaurant_id: 4)
RestaurantMeal.create(meal_id: 5, restaurant_id: 5)
RestaurantMeal.create(meal_id: 6, restaurant_id: 6)
RestaurantMeal.create(meal_id: 7, restaurant_id: 1)
RestaurantMeal.create(meal_id: 8, restaurant_id: 2)
RestaurantMeal.create(meal_id: 9, restaurant_id: 3)
RestaurantMeal.create(meal_id: 10, restaurant_id: 4)

puts '...Done seeding!'