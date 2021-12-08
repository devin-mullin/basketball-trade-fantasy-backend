class ApplicationController < ActionController::API

    private
    def token(user_id)
      payload = { user_id: user_id }
      JWT.encode(payload, jwt_key, 'HS256')
    end
  
    def jwt_key
      ENV["jwt-key"]
    end
  
    def client_has_valid_token?
      !!current_user_id
    end
  
    def current_user_id
      begin
        token = request.headers["Authorization"]
        decoded_array = JWT.decode(token, jwt_key, true, { algorithm: 'HS256' })
        payload = decoded_array.first
      rescue JWT::VerificationError
        return nil
      end
      payload["user_id"]
    end
  
    def require_login
      render json: {error: 'Unauthorized'}, status: :unauthorized if !client_has_valid_token?
    end
  end