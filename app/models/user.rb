class User < ApplicationRecord
    has_secure_password

    has_many :team_ownerships
    has_many :players, through: :team_ownerships
end
