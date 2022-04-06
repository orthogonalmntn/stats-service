require_relative "index_endpoint"

module Api
  module Events
    module Planets
      class RootEndpoint < Grape::API

        mount Planets::IndexEndpoint => "/"

      end
    end
  end
end
