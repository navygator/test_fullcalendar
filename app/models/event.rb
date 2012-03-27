class Event < ActiveRecord::Base
  attr_accessor :allDay

  def self.calendar_events(start_at, end_at)
    @events = where("start >= ? AND end <= ?",
                        Time.at(start_at.to_i), Time.at(end_at.to_i))
    @events.map! { |event|
      event.allDay = false
      event
    }
  end

  def as_json(options = nil)
    options.merge!({ :methods => :allDay }) unless options.nil?
    super(options)
  end

end
