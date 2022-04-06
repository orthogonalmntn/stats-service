require_relative "planets/root_endpoint"
require_relative "ships/root_endpoint"
require_relative "shops/root_endpoint"

module Api
  module Events
    class RootEndpoint < Grape::API

      mount Events::PingEndpoint => "ping"
      mount Events::Planets::RootEndpoint => "planets/"
      mount Events::Ships::RootEndpoint => "ships/"
      mount Events::Shops::RootEndpoint => "shops/"

    end
  end
end
