require "bunny"
require "json"

module ShopConsumer
  connection = Bunny.new
  connection.start

  channel = connection.create_channel
  exchange = channel.topic("game_events")

  begin
    channel.queue("", :exclusive => true).bind(exchange, :routing_key => "game_events.shops").subscribe do |delivery_info, metadata, payload|
      deserialized_payload = JSON.parse payload

      puts "Game event: #{deserialized_payload}, routing key is #{delivery_info.routing_key}"
    end
  rescue Interrupt => _
    connection.close
  end
end
