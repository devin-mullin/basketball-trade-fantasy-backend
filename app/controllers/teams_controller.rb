class TeamsController < ApplicationController

    def index
        teams = Team.all
        render json: teams, include: :players
    end

    def show 
        team = Team.find_by(params[:id])
        if team
            render json: team, include: :players
        else
            render json: {error: "Team not found"}, status: :not_found
        end
    end

end
