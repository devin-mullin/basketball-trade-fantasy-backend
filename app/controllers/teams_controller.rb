class TeamsController < ApplicationController
    def index
        render json: Team.all
    end

    def show 
        team = Team.find(params[:id])
        if team
            render json: team, include: :players
        else
            render json: {error: "Team not found"}, status: :not_found
        end
    end

end
