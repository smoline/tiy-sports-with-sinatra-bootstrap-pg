require 'sinatra'
require 'pg'
require 'sinatra/reloader' if development?

require_relative 'active_record_setup'

after do
  ActiveRecord::Base.connection.close
end

get '/' do
  @teams = Team.all
  @games = Game.all
  erb :home
end
