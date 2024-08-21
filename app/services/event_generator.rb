# app/services/event_generator.rb
class EventGenerator
  def initialize(calendar_day)
    @calendar_day = calendar_day
  end

  def call
    Group.find_each do |group|
      Event.find_or_create_by(calendar_day: @calendar_day, group: group) if group.day == @calendar_day.date.strftime("%A")
    end
  end
end
