class EventsController < ApplicationController

  def index
    @events = Event.order(:end_date)
  end

end
