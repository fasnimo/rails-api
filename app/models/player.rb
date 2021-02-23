class Player < ApplicationRecord
    has_many :team_ownerships
    has_many :users, through: :team_ownerships
end
