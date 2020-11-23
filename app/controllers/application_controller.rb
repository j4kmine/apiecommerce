class ApplicationController < ActionController::API
    def access_token
        provided_token = request.authorization&.gsub(/\ABearer\s/, '')
        @access_token = AccessToken.find_by(token: provided_token)
    end
    def current_user
        @current_user = access_token&.user
    end
    
end
