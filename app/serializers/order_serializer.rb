class OrderSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :username, :phone_number, :region, :city, :delivery_address, :restaurant_id, :customer_id
end
