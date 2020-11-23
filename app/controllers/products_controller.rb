class ProductsController < ApplicationController
    skip_before_action :authorize!
    def index
      products = Product.includes(:product_variants).page(current_page).per(per_page)
      if product_params[:store_id].to_s.present?
         products = products.where("store_id = ?", product_params[:store_id])
      end
      if product_params[:name].to_s.present?
        products = products.where("name LIKE  ?", "%#{product_params[:name]}%")
      end
      render json: products
    end
    def product_params
      params.require(:data).require(:attributes).
        permit(:name, :store_id) ||
        ActionController::Parameters.new
    end
end