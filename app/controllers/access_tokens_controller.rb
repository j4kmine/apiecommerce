class AccessTokensController < ApplicationController
    def create
      authenticator = UserAuthenticator.new(authentication_params)
      authenticator.perform
      render json: authenticator.access_token, status: :created
    end
  
    def destroy
      current_user.access_token.destroy
    end
  
    private
  
    def authentication_params
      (standard_auth_params).to_h.symbolize_keys
    end
  
    def standard_auth_params
      params.dig(:data, :attributes)&.permit(:email, :password)
    end
  end
  