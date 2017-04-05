# create table players(id serial, name text);
class Player < ActiveRecord::Base
  has_many :memberships
  has_many :teams, through: :memberships
  self.primary_key = "id"
end
