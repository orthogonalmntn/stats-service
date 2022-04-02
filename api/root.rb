module Api
  class Root < Grape::API

    content_type :json, "application/json"
    format :json
    default_format :json

    mount ::Api::Events::RootEndpoint => "events"

  end
end
