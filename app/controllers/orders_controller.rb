class OrdersController < ApplicationController

rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index
        orders = Order.all
        render json: orders
    end

    def create
        order = Order.create!(order_params)
        render json: order, status: :created
    end

    private

    def order_params
        params.permit(:first_name, :username, :phone_number, :delivery_address, :restaurant_id, :customer_id)
    end

    def render_unprocessable_entity_response (invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

end