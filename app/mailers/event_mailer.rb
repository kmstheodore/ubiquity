class EventMailer < ApplicationMailer
  default from: "theokmsreminders@gmail.com"

  def event_created
    @event = params[:event]
    mail(to: @user.user_id.email, subject: "Event created")
  end
end
