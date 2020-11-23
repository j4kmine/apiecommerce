class ApplicationController < ActionController::API
    def access_token
        provided_token = request.authorization&.gsub(/\ABearer\s/, '')
        @access_token = AccessToken.find_by(token: provided_token)
    end
    def current_user
        @current_user = access_token&.user
    end
    def current_page
        return 1 unless params[:page]
        return params[:page] if params[:page].is_a?(String)
        params.dig(:page, :number) if params[:page].is_a?(Hash)
      end
    
      def per_page
        return unless params[:page]
        return params[:per_page] if params[:per_page].is_a?(String)
        params.dig(:page, :size) if params[:page].is_a?(Hash)
      end
end
