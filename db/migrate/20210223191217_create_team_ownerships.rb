class CreateTeamOwnerships < ActiveRecord::Migration[6.0]
  def change
    create_table :team_ownerships do |t|
      t.references :user, null: false, foreign_key: true
      t.references :player, null: false, foreign_key: true

      t.timestamps
    end
  end
end
