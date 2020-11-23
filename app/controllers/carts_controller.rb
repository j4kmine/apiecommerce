class CartsController < ApplicationController
    skip_before_action :authorize!
    def index
        carts = Cart.page(current_page).per(per_page)
        render json: carts
    end
    def create
        carts = Cart.new(cart_params)
        carts.save!
        render json: carts, status: :created
    rescue
        render json: carts, adapter: :json_api,
        status: :unprocessable_entity
    end
    def update
        carts = Cart.find(params[:id])
        carts.update_attributes!(cart_params)
        render json: carts, status: :ok
    rescue
        render json: carts, adapter: :json_api,
        status: :unprocessable_entity
    end
    def destroy
        carts = Cart.find(params[:id])
        carts.destroy
        head :no_content
    end
    def cart_params
        params.require(:data).require(:attributes).
        permit(:cart_id, :price, :qty, :store_id, :product_id, :product_variant_id) ||
        ActionController::Parameters.new
    end
   
  end