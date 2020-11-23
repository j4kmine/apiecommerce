class RegistrationsController < ApplicationController
  
    def create
      user = User.new(registration_params)
      user.save!
      render json: user, status: :created
    rescue ActiveRecord::RecordInvalid
      render json: user, adapter: :json_api,
        serializer: ErrorSerializer,
        status: :unprocessable_entity
    end
  
    private
  
    def registration_params
      params.require(:data).require(:attributes).
        permit(:email, :password, :address, :avatar_url) ||
        ActionController::Parameters.new
    end
  end
  