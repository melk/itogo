require 'date'

class EventsController < ApplicationController
  ACTION_TYPES ={:request => 0, :invite => 1, :going => 2, :maybe => 3, :not_going => 4, :follow => 5 }

  def event
    @event = Events.find(params[:id])
    @people_going = PeopleActions.where(e_id: @event.id, action: ACTION_TYPES[:going]).all 
    # render text: "#{@people_going} and #{@event} and #{tmp}"
  end

  def join
    user_id = 1234
    event = Events.find(params[:id])
    action = PeopleActions.find_by u_id: user_id, e_id: event.id
    if(action == nil)
      action = PeopleActions.new(u_id: user_id, e_id: event.id, action: ACTION_TYPES[:going])
      action.save
    else
    end
    # render text: ACTION_TYPES[:going]
    redirect_to event_path(event.id)
  end

  def create
    @event = Events.new(event_params)
    @event.save
    redirect_to event_path(@event.id)
  end

  private

  def event_params
    clone_params = params.deep_dup
    clone_params[:new_event].merge!(:user_id => 1234)
    s_date = Date.strptime(clone_params[:new_event][:s_date] , "%m/%d/%Y").to_s
    clone_params[:new_event][:s_date] = s_date
    clone_params.require(:new_event).permit(:title, :description, :location, :s_date, :e_date, :visibility, :user_id)
  end
end
