module Api
  module Events
    module Planets
      class IndexEndpoint < Grape::API

        desc "Returns all Planets", nickname: "planets_index"

        get do
          planets = Planet.all

          present(planets)
        end

      end
    end
  end
end
