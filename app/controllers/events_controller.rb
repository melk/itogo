require 'date'

class EventsController < ApplicationController
  def event
    @event = Events.find(params[:id])
  end
  
  def new
    @event = Events.new
  end

  def create
    event_hash = event_params
    @event = Events.new(event_hash)
    @event.save
    redirect_to events_event_path
  end

  private
  def event_params
    clone_params = params.deep_dup
    clone_params[:event].merge!(:user_id => '1234')
    s_date = Date.strptime(clone_params[:event][:s_date] , "%m/%d/%Y").to_s
    clone_params[:event][:s_date] = s_date
    clone_params.require(:event).permit(:title, :description, :location, :s_date, :e_date, :visibility, :user_id)
  end
end
