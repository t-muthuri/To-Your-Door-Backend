require 'faker'
Customer.destroy_all #(for a clean slate)
Meal.destroy_all

puts '...Seeding data'

# customer = Customer.create!(
#     first_name: "Ragyn",
#     last_name: "Nyge",
#     username: "R-Nyge",
#     email: "ragynnyge@gmail.com",
#     password: "hello",
#     password_confirmation: "hello"
# )

5.times do |i|
    puts "...Creating customers #{i+1}"
    Customer.create!(
        first_name: "name1 #{i+1}",
        last_name: "name2 #{i+1}",
        username: "username #{i+1}",
        email: "customer#{i+1}@gmail.com",
        password: "hello #{i+1}",
        password_confirmation: "hello #{i+1}"
    )
end

10.times do |i|
    puts "...Creating meals #{i+1}"
    Meal.create!(
        name: Faker::Food.dish,
        description: Faker::Food.description,
        price: Faker::Number.binary(digits: 4),
        img_url: "https://i0.wp.com/images-prod.healthline.com/hlcmsresource/images/AN_images/healthy-eating-ingredients-1296x728-header.jpg?w=1155&h=1528"
    )
end

# Meal.create!([{
#     name: Faker::Food.dish,
#     description: Faker::Food.description,
#     price: Faker::Number.binary(digits: 4),
#     img_url: "https://i0.wp.com/images-prod.healthline.com/hlcmsresource/images/AN_images/healthy-eating-ingredients-1296x728-header.jpg?w=1155&h=1528"
# },
# {
#     name: Faker::Food.dish,
#     description: Faker::Food.description,
#     price: Faker::Number.binary(digits: 4),
#     img_url: "https://i0.wp.com/images-prod.healthline.com/hlcmsresource/images/AN_images/healthy-eating-ingredients-1296x728-header.jpg?w=1155&h=1528"
# },
# {
#     name: Faker::Food.dish,
#     description: Faker::Food.description,
#     price: Faker::Number.binary(digits: 4),
#     img_url: "https://i0.wp.com/images-prod.healthline.com/hlcmsresource/images/AN_images/healthy-eating-ingredients-1296x728-header.jpg?w=1155&h=1528"
# },
# ])

puts '...Done seeding!'