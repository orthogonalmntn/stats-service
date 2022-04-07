module EventConsumers
  class ShopConsumer

    def initialize(channel, exchange)
      @channel = channel
      @exchange = exchange
    end

    def listen!
      @channel.queue("", :exclusive => true).bind(@exchange, :routing_key => "game_events.shops").subscribe do |_delivery_info, _metadata, payload|
        deserialized_payload = JSON.parse payload

        Shop.create!(
          name: deserialized_payload["name"],
          description: deserialized_payload["description"],
          occurred_at: Time.parse(deserialized_payload["timestamp"]),
        )
      end
    end

  end
end
