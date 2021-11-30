class UserTeamPlayersController < ApplicationController
  before_action :set_user_team_player, only: [:show, :update, :destroy]

  # GET /user_team_players
  def index
    @user_team_players = UserTeamPlayer.all

    render json: @user_team_players
  end

  # GET /user_team_players/1
  def show
    render json: @user_team_player
  end

  # POST /user_team_players
  def create
    @user_team_player = UserTeamPlayer.new(user_team_player_params)

    if @user_team_player.save
      render json: @user_team_player, status: :created, location: @user_team_player
    else
      render json: @user_team_player.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_team_players/1
  def update
    if @user_team_player.update(user_team_player_params)
      render json: @user_team_player
    else
      render json: @user_team_player.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_team_players/1
  def destroy
    @user_team_player.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_team_player
      @user_team_player = UserTeamPlayer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_team_player_params
      params.require(:user_team_player).permit(:user_team_id, :player_id)
    end
end
