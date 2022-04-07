module Api
  class Root < Grape::API

    content_type :json, "application/json"
    format :json
    default_format :json

    rescue_from StandardError do |e|
      error!("Server Error", 500)
    end

    mount ::Api::Events::RootEndpoint => "events"

  end
end
