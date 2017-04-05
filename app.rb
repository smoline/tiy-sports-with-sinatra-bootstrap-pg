require 'sinatra'
require 'pg'
require 'sinatra/reloader' if development?

require_relative 'active_record_setup'

after do
  ActiveRecord::Base.connection.close
end

get '/' do
  @all_teams = Team.all
  page = params[:page] || 1
  n = (page.to_i * 5) - 5
  @teams = Team.limit(5).offset(n).reorder('id')
  @games = Game.all
  erb :home
end
