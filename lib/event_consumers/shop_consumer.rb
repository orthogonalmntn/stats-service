module EventConsumers
  class ShopConsumer

    def initialize(channel, exchange)
      @channel = channel
      @exchange = exchange
    end

    def listen!
      @channel.queue("", :exclusive => true).bind(@exchange, :routing_key => "game_events.shops").subscribe do |delivery_info, metadata, payload|
        deserialized_payload = JSON.parse payload

        puts "Game event: #{deserialized_payload}, routing key is #{delivery_info.routing_key}"
      end
    end

  end
end
