# create table memberships(id serial, team_id integer, player_id integer);
class Membership < ActiveRecord::Base
  belongs_to :player
  belongs_to :team
  self.primary_key = "id"
end
