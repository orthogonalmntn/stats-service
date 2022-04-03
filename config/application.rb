require "bundler"
Bundler.require(:default, :development)

Dir["./api/**/*.rb"].sort.each { require _1 }
Dir["./lib/**/*.rb"].sort.each { require _1 }

class StatsService < Grape::API
  mount ::Api::Root => "api"
end
