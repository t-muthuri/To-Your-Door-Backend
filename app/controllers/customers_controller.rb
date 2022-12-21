class CustomersController < ApplicationController

rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def show #show with orders on the profile page
        customer = Customer.find(params[:id])
        render json: customer
    end

    def create
        customer = Customer.create!(customer_params)
        render json: customer, status: :created
    end

    def update
        customer = Customer.find(params[:id])
        customer.update!(customer_params)
        render json: customer, status: :accepted
    end

    def destroy
        customer = Customer.find(params[:id])
        customer.destroy!
        head :no_content
    end

    private

    def customer_params
        params.permit(:username, :email, :password, :password_confirmation)
    end

    def render_not_found_response
        render json: { error: "Customer not found" }, status: :not_found
    end

    def render_unprocessable_entity_response (invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

end