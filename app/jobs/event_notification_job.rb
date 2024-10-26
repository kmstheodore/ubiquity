class EventNotificationJob < ApplicationJob
  queue_as :default

  def perform(event)
    # Logic to send notification
    NotificationService.send_notification(event)
  end
end
