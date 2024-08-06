class AddYearToCalendar < ActiveRecord::Migration[7.1]
  def change
    add_column :calendars, :year, :integer
  end
end
