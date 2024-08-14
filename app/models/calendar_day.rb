class CalendarDay < ApplicationRecord
  belongs_to :calendar
  # has_many :group, ->(calendar_day) { where(day: calendar_day.date.strftime('%A')) }, foreign_key: 'day', primary_key: 'date'
  has_many :events
  has_many :groups, through: :events
end
