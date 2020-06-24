class EventPicsController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @event.event_pic.attach(params[:event_pic])
    redirect_to(event_path(@event))
  end
  def new
    @event = Event.find(params[:event_id])
    redirect_to(event_event_pics_path(@event))
  end
  def index
    @events = Event.all
    @event.event_pic.attach(params[:event_pic])
  end

end
