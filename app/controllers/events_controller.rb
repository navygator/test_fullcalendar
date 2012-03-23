class EventsController < ApplicationController

  respond_to :html, :js, :xml

  def index
    #@event = Event.new(:title => "First Event", :description => "Test event for calendar", :start_at => Time.now, :end_at => 1.hour.from_now)
    #@event.save
    #event = Event.last
    #event.update_attributes({:title => "Second event", :start_at => "2012-03-22 14:00"})
    #event.save
    @events = Event.all
  end

  def show
    @event = Event.new(:end_at => 1.hour.from_now)
    respond_with @event
  end

  def new
    @event = Event.new(:end_at => 1.hour.from_now, :period => "Does not repeat")
  end

  def create
    if params[:event][:period] == "Does not repeat"
      @event = Event.new(params[:event])
    else
      @event_series = EventSeries.new(params[:event])
    end
  end

  def get_events
    @start_at = Time.at(params[:start].to_i)
    @events = Event.where("start_at >= ? AND end_at <= ?",
                          Time.at(params[:start].to_i), Time.at(params[:end].to_i))

    #@events = Event.all
    #@events = []
    @events << Event.new(:title => "First Event", :description => "Test event for calendar", :start_at => Time.now, :end_at => 2.hour.from_now)
    @events << Event.new(:title => "Second Event", :description => "Test event for calendar", :start_at => Time.now, :end_at => 3.hour.from_now)
    @events << Event.new(:title => "Third Event", :description => "Test event for calendar", :start_at => 1.hour.from_now, :end_at => 2.hour.from_now)
    #
    #events = []
    #@events.each do |event|
    #  events << {:id => event.id, :color => event.title=~/first/i ? 'blue' : 'red', :title => event.title, :description => event.description || "Some cool description here...", :start => "#{event.start_at.iso8601}", :end => "#{event.end_at.iso8601}", :allDay => event.all_day, :recurring => (event.event_series_id)? true: false}
    #end
    #render :text => events.to_json
    respond_with @events
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
