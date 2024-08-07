class CalendarDaysController < ApplicationController
  before_action :set_calendar_day

  def show
    @calendar = @calendar_day.calendar
    @slots = @calendar_day.slots
  end

  private

  def set_calendar_day
    @calendar_day = CalendarDay.find(params[:id])
  end

  def calendar_day_params
    params.require(:calendar_day).permit(:date, :calendar_id)
  end
end
