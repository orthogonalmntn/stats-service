require "bunny"
require "json"

require_relative "event_consumers/planet_consumer"
require_relative "event_consumers/ship_consumer"
require_relative "event_consumers/shop_consumer"

module EventConsumers
  connection = Bunny.new
  connection.start

  channel = connection.create_channel
  exchange = channel.topic("game_events")

  PlanetConsumer.new(channel, exchange).listen!
  ShipConsumer.new(channel, exchange).listen!
  ShopConsumer.new(channel, exchange).listen!
end
