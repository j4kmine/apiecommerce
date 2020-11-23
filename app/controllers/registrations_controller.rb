class RegistrationsController < ApplicationController
    skip_before_action :authorize!
    def create
      user = User.new(registration_params)
      user.save!
      render json: user, status: :created
    rescue ActiveRecord::RecordInvalid
      render json: user.errors , adapter: :json_api,
        status: :unprocessable_entity
    end
  
    private
  
    def registration_params
      params.require(:data).require(:attributes).
        permit(:email, :password, :address, :avatar_url) ||
        ActionController::Parameters.new
    end
  end
  