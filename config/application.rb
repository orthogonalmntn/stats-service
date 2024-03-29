require "bundler"
Bundler.require(:default, :development)

require "dotenv/load"

OTR::ActiveRecord.configure_from_url! ENV["DATABASE_URL"]
OTR::ActiveRecord.establish_connection!

Dir["./api/**/*.rb"].sort.each { require _1 }
Dir["./lib/**/*.rb"].sort.each { require _1 }

class StatsService < Grape::API
  mount ::Api::Root => "api"
end
