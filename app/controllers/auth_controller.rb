class AuthController < ApplicationController
    def login
        user =  User.find_by("lower(username) = ?", params[:username].downcase)
        if user && user.authenticate(params[:password])
            payload = {user_id: user.id}
            token = encode_token(payload)
            render json: { jwt: token, user: user }, status: :created 
        else
            render json: { errors: [ "Sorry buddy, try again with the right login" ] }, status: :unprocessable_entity
        end
    end

    def auto_login
        if session_user
            render json: session_user
        else 
            render json: { errors: "No user logged in" }
        end
    end

    def user_is_authed
        render json: {message: "Authorization success!"}
    end

        private
        def user_login_params
          params.require(:user).permit(:username, :password)
        end
end
