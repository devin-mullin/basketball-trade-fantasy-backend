class UsersController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
 

  def show
    user = User.find_by(username: session[:username])
    if user
      render json: user
    else
      render json: { error: "Not authorized" }, status: :unauthorized
    end
  end


  # POST /users
  def create
    user = User.create!(user_params)
    if user.valid?
      payload = {user_id: user.id}
      token = encode_token(payload)
      render json: {username: user.username, jwt: token}
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end


  private

    # Only allow a list of trusted parameters through.
    def user_params
      params.permit(:username, :id, :password, :password_confirmation)
    end
end
