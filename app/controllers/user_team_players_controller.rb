class UserTeamPlayersController < ApplicationController


  # GET /user_team_players
  def index
    @user_team_players = UserTeamPlayer.all

    render json: @user_team_players
  end

  # GET /user_team_players/1
  def show
    user_team_players = UserTeamPlayer.find(params[:id])
    render json: user_team_players, status: :ok
  end

  # POST /user_team_players
  def create
    user_team_player = UserTeamPlayer.create(user_team_player_params)
    render json: user_team_player, status: :created
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
    user_team_player = UserTeamPlayer.find(params[:id])
    user_team_player.destroy
    render json: {}
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_team_player
      @user_team_player = UserTeamPlayer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_team_player_params
      params.permit(:user_team_id, :player_id)
    end
end
