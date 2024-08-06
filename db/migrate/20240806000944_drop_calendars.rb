class DropCalendars < ActiveRecord::Migration[7.1]
  def change
    drop_table :calendars
  end
end
