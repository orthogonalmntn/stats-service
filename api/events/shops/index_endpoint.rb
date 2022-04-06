module Api
  module Events
    module Shops
      class IndexEndpoint < Grape::API

        desc "Returns all Shops", nickname: "shops_index"

        get do
          shops = Shop.all

          present(shops)
        end

      end
    end
  end
end
