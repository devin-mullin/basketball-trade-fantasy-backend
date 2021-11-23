class Player < ApplicationRecord
    belongs_to :team
    belongs_to :user_team
end
