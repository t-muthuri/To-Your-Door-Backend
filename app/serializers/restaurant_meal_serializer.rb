class RestaurantMealSerializer < ActiveModel::Serializer
  attributes :id, :meal_id, :restaurant_id
end
