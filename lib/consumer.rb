require "bunny"
require "json"

module EventConsumer
  connection = Bunny.new
  connection.start

  channel = connection.create_channel
  queue = channel.queue("game_events")

  begin
    queue.subscribe do |_delivery_info, _properties, body|
      deserialized_payload = JSON.parse body
      puts deserialized_payload
    end
  rescue Interrupt => _
    connection.close
  end
end
