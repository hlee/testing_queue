require 'acapi/publishers/logger'
require 'acapi/subscribers/logger'
require "acapi/publishers/upstream_event_publisher"

ActiveSupport::Notifications.subscribe "acapi.acapi.events.local" do |name, start, finish, id, payload|
  byebug
  Rails.logger.debug(["notification:", name, start, finish, id, payload].join(" "))
end

Acapi::Publishers::UpstreamEventPublisher.new.run

