class MealSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :category, :img_url
end
