# create table teams(id serial, name text, description text, image_url text);
class Team < ActiveRecord::Base
  has_many :memberships
  has_many :players, through: :memberships
  self.primary_key = "id"
end
