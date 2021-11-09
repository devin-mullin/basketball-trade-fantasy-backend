class PlayersController < ApplicationController
    def index
        render json: Player.all
    end

    def show 
        player = Player.find(params[:id])
        if player
            render json: player, status: :ok
        else
            render json: {error: "Player not found"}, status: :not_found
        end
    end
end
