class OrdersController < ApplicationController
    def index
        orders = Order.page(current_page).per(per_page).where("user_id = ?", current_user)
        render json: orders
    end
    def create
        statuses = []
        random = (0...8).map { (65 + rand(26)).chr }.join
        params[:data][:attributes][:cart].each do |post_params|
            order = Order.new(order_params(post_params).merge(order_id: random).merge(user: current_user))
            statuses << ( order.save ? "OK" : order.errors )
        end if params[:data][:attributes][:cart]
        render json: statuses
    end
    def order_params(post_params)
        post_params.permit(:cart_id, :price, :qty, :store_id, :product_id, :product_variant_id) ||
        ActionController::Parameters.new
    end
end