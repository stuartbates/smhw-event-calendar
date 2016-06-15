class EventsController < ApplicationController

  def index
    @event = Event.new
    @events = Event.order(:end_date)
  end

  def create
    @event = Event.new(event_params)

    if @event.save
      render json: Event.order(:end_date)
    else
      render nothing: true, status: 400
    end
  end

  protected

  def event_params
    params.require(:event).permit(:title, :start_date, :end_date, :description)
  end

end
