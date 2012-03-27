class Event < ActiveRecord::Base
  attr_accessor :allDay

  def self.calendar_events(start_at, end_at)
    @events = where("start_at >= ? AND end_at <= ?",
                        Time.at(start_at.to_i), Time.at(end_at.to_i))

    @events << Event.new(:title => "First Event", :description => "Test event for calendar",
                         :start_at => Time.now, :end_at => 2.hour.from_now, :color => 'blue')
    @events << Event.new(:title => "Second Event", :description => "Test event for calendar",
                         :start_at => Time.now, :end_at => 3.hour.from_now, :color => 'red')
    @events << Event.new(:title => "Third Event", :description => "Test event for calendar",
                         :start_at => 1.hour.from_now, :end_at => 2.hour.from_now)

    @events.map! { |event|
      event.allDay = event.all_day
      event
    }
  end

  def as_json(options = nil)
    options.merge!({ :methods => :allDay }) unless options.nil?
    super(options)
  end

end
