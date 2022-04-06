module Api
  module Events
    module Ships
      class IndexEndpoint < Grape::API

        desc "Returns all Ships", nickname: "ships_index"

        get do
          ships = Ship.all

          present(ships)
        end

      end
    end
  end
end
