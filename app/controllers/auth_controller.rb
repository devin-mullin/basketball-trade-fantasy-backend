class AuthController < ApplicationController
    def login
        user =  User.find_by("lower(username) = ?", params[:username].downcase)
        if user && user.authenticate(params[:password])
            render json: { token: token(user.id), user_id: user.id, username: user.username }, status: :created 
        else
            render json: { errors: [ "Sorry buddy, try again with the right login" ] }, status: :unprocessable_entity
        end
    end

    def auto_login
        if current_user_id
            render json: current_user_id
        else 
            render json: { errors: "No user logged in" }
        end
    end

        private
        def user_login_params
          params.require(:user).permit(:username, :password)
        end
end
