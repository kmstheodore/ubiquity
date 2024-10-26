class Event < ApplicationRecord
  belongs_to :user
  after_create :schedule_notification

  private

  def schedule_notification
    EventNotificationJob.set(wait_until: strike).perform_later(self)
  end
end
