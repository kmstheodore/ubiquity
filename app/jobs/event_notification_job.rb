class EventNotificationJob < ApplicationJob
  queue_as :default

  def perform(event)
    NotificationChannel.broadcast_to(
      event.user,
      { title: event.name, message: "Your event is happening now!" }
    )
  end
end
