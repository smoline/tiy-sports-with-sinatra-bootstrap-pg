# create table games(id serial primary key, home_team_id integer, away_team_id integer, score varchar(7));
class Game < ActiveRecord::Base
  belongs_to :home_team, class_name: "Team"
  belongs_to :away_team, class_name: "Team"
  self.primary_key = "id"
end
