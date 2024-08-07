class CalendarDay < ApplicationRecord
  belongs_to :calendar
  has_many :slots, ->(calendar_day) { where(day: calendar_day.date.strftime('%A')) }, foreign_key: 'day', primary_key: 'date'
end
