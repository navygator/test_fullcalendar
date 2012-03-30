class EventsController < ApplicationController

  respond_to :html, :js, :json

  def index
    if params[:start]
      @events = Event.calendar_events(params[:start], params[:end])

      respond_with @events
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    start_at = Time.zone.parse(params[:start_at])
    @event = Event.new(:start_at => start_at, :end_at => start_at + 1.hour)
  end

  def create
    @event = Event.new(params[:event])
    if @event.save
      flash.now[:success] = "Event created"
    else
      flash.now[:error] = "We have some errors here..."
      render 'new'
    end
  end

  def move
    #@event = Event.find_by_id params[:id]
    #if @event
    #  @event.start_at = (params[:minute_delta].to_i).minutes.from_now((params[:day_delta].to_i).days.from_now(@event.start_at))
    #  @event.end_at = (params[:minute_delta].to_i).minutes.from_now((params[:day_delta].to_i).days.from_now(@event.end_at))
    #  @event.all_day = params[:all_day]
    #  @event.save
    #end
  end


  def resize
  #  @event = Event.find_by_id params[:id]
  #  if @event
  #    @event.end_at = (params[:minute_delta].to_i).minutes.from_now((params[:day_delta].to_i).days.from_now(@event.end_at))
  #    @event.save
  #  end
  end

  def edit
    #@event = Event.find_by_id(params[:id])
  end

  def update
    #@event = Event.find_by_id(params[:event][:id])
    #if params[:event][:commit_button] == "Update All Occurrence"
    #  @events = @event.event_series.events #.find(:all, :conditions => ["start_at > '#{@event.start_at.to_formatted_s(:db)}' "])
    #  @event.update_events(@events, params[:event])
    #elsif params[:event][:commit_button] == "Update All Following Occurrence"
    #  @events = @event.event_series.events.find(:all, :conditions => ["start_at > '#{@event.start_at.to_formatted_s(:db)}' "])
    #  @event.update_events(@events, params[:event])
    #else
    #  @event.attributes = params[:event]
    #  @event.save
    #end
    #
    #render :update do |page|
    #  page<<"$('#calendar').fullCalendar( 'refetchEvents' )"
    #  page<<"$('#desc_dialog').dialog('destroy')"
    #end

  end

  def destroy
    #@event = Event.find_by_id(params[:id])
    #if params[:delete_all] == 'true'
    #  @event.event_series.destroy
    #elsif params[:delete_all] == 'future'
    #  @events = @event.event_series.events.find(:all, :conditions => ["start_at > '#{@event.start_at.to_formatted_s(:db)}' "])
    #  @event.event_series.events.delete(@events)
    #else
    #  @event.destroy
    #end
    #
    #render :update do |page|
    #  page<<"$('#calendar').fullCalendar( 'refetchEvents' )"
    #  page<<"$('#desc_dialog').dialog('destroy')"
    #end

  end
end
