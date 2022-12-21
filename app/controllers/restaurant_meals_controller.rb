class RestaurantMealsController < ApplicationController

rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def create
        restaurant_meal = RestaurantMeal.create!(restaurant_meal_params)
        render json: restaurant_meal, status: :created
    end

    private

    def restaurant_meal_params
        params.permit(:meal_id, :restaurant_id)
    end

    def render_unprocessable_entity_response (invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

end
