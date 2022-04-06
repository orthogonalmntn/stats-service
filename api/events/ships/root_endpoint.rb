require_relative "index_endpoint"

module Api
  module Events
    module Ships
      class RootEndpoint < Grape::API

        mount Ships::IndexEndpoint => "/"

      end
    end
  end
end
