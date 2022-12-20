class CreateRestaurantMeals < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurant_meals do |t|
      t.integer :meal_id
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
