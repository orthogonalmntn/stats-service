module EventConsumers
  class ShipConsumer

    def initialize(channel, exchange)
      @channel = channel
      @exchange = exchange
    end

    def listen!
      @channel.queue("", :exclusive => true).bind(@exchange, :routing_key => "game_events.ships").subscribe do |delivery_info, metadata, payload|
        deserialized_payload = JSON.parse payload

        Ship.create!(name: deserialized_payload["name"], description: deserialized_payload["description"])
      end
    end

  end
end
