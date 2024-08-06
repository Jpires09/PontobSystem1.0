# app/models/calendar.rb
class Calendar < ApplicationRecord
  has_many :calendar_days, dependent: :destroy
end
