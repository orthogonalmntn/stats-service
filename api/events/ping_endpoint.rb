module Api
  module Events
    class PingEndpoint < Grape::API

      desc "Returns 200 / Healthcheck endpoint", nickname: "ping"

      get do
        status 200
      end

    end
  end
end
