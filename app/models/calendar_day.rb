# app/models/calendar_day.rb
class CalendarDay < ApplicationRecord
  belongs_to :calendar
  # Adicione outras associações, se houver, por exemplo:
  # has_many :sessions
end
