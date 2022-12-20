require 'faker'
Customer.destroy_all #(for a clean slate)

puts '...Seeding data'

customer = Customer.create(
    first_name: "Ragyn",
    last_name: "Nyge",
    username: "R-Nyge",
    email: "ragynnyge@gmail.com",
    password: "hello",
    password_confirmation: "hello"
)

5.times do |i|
    puts"...Creating customers #{i+1}"
    Customer.create(
        first_name: "name1 #{i+1}",
        last_name: "name2 #{i+1}",
        username: "username #{i+1}",
        email: "customer#{i+1}@gmail.com",
        password: "hello #{i+1}",
        password_confirmation: "hello #{i+1}"
    )
end
puts '...Done seeding!'