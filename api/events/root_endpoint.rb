module Api
  module Events
    class RootEndpoint < Grape::API

      mount Events::PingEndpoint => "ping"

    end
  end
end
