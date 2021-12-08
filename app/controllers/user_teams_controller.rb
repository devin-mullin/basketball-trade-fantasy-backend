class UserTeamsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  # GET /user_teams
  def index
    user_teams = UserTeam.all
    render json: user_teams
  end

  # GET /user_teams/1
  def show
    user_teams = UserTeam.find_by(user_id: params[:user_id])
    render json: user_teams
  end

  # POST /user_teams
  def create
    user_team = UserTeam.create!(user_team_params)
      render json: user_team, status: :created
  end

  # PATCH/PUT /user_teams/1
  def update
    if @user_team.update(user_team_params)
      render json: @user_team
    else
      render json: @user_team.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_teams/1
  def destroy
    @user_team.destroy
    render json: {}
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_team
      @user_team = UserTeam.find_by(user_id: session[:user_id])
    end

    # Only allow a list of trusted parameters through.
    def user_team_params
      params.permit(:user_id, :name)
    end
end
