class AddTeamToSurveys < ActiveRecord::Migration
  def change
    add_reference :surveys, :team, index: true, foreign_key: true
  end
end
