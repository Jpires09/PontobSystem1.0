class Event < ApplicationRecord
  belongs_to :calendar_day
  belongs_to :session
  belongs_to :group
end
