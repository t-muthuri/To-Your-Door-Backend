class MealsController < ApplicationController

rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index
        meals = Meal.all
        render json: meals
    end

    def show
        meal = Meal.find(params[:id])
        render json: meal
    end

    def update
        meal = Meal.find(params[:id])
        meal.update!(meal_params)
        render json: meal, status: :accepted
    end

    def create
        meal = Meal.create!(meal_params)
        render json: meal, status: :created
    end

    private

    def meal_params
        params.permit(:name, :description, :price, :category, :img_url)
    end

    def render_not_found_response
        render json: { error: "Meal not found" }, status: :not_found
    end

    def render_unprocessable_entity_response (invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

end