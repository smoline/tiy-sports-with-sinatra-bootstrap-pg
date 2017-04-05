require 'active_record'

ActiveRecord::Base.logger = Logger.new(STDOUT)
ActiveRecord::Base.establish_connection(
  adapter: "postgresql",
  database: "tiy-sports"
)

require_relative 'player'
require_relative 'team'
require_relative 'membership'
require_relative 'game'
