class EventsController < ApplicationController
  def index
    if user_signed_in?
      @events = current_user.events
    end
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(event_params)
    if @event.save
      EventNotificationJob.set(wait_until: @event.strike).perform_later(@event)
      redirect_to root_path, notice: "Event was successfully created."
    else
      render :new
    end
  end

  private

  def event_params
    params.require(:event).permit(:name, :desc, :strike, :repeat) # Replace with actual event attributes
  end
end
