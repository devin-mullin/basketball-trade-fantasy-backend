class UserTeamsController < ApplicationController
  before_action :set_user_team, only: [:show, :update, :destroy]

  # GET /user_teams
  def index
    @user_teams = UserTeam.all

    render json: @user_teams
  end

  # GET /user_teams/1
  def show
    render json: @user_team
  end

  # POST /user_teams
  def create
    @user_team = UserTeam.new(user_team_params)

    if @user_team.save
      render json: @user_team, status: :created, location: @user_team
    else
      render json: @user_team.errors, status: :unprocessable_entity
    end
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
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_team
      @user_team = UserTeam.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_team_params
      params.require(:user_team).permit(:user_id)
    end
end
