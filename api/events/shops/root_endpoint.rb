require_relative "index_endpoint"

module Api
  module Events
    module Shops
      class RootEndpoint < Grape::API

        mount Shops::IndexEndpoint => "/"

      end
    end
  end
end
