class EventsController < ApplicationController
  def new
    @event = Events.new
  end
  
  def create
    @event = Events.new(event_params)
    # @event.save
    redirect_to @event
    
    render text: "#{@event}"
  end
  
  private
    def event_params
      params[:event].merge!(:user_id => '1234')
      params.require(:event).permit(:title, :description, :location, :s_date, :e_date, :visibility, :user_id)
    end
end
