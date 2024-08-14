class CalendarDaysController < ApplicationController
  before_action :set_calendar_day, only: %i[show]

  def show
    @calendar = @calendar_day.calendar
    translated_day = translate_day(@calendar_day.date.strftime("%A"))
    @groups = Group.where(day: translated_day)
  end

  private

  def set_calendar_day
    @calendar_day = CalendarDay.find(params[:id])
  end

  def translate_day(day)
    translations = {
      "Sunday" => "Domingo",
      "Monday" => "Segunda-Feira",
      "Tuesday" => "Terça-Feira",
      "Wednesday" => "Quarta-Feira",
      "Thursday" => "Quinta-Feira",
      "Friday" => "Sexta-Feira",
      "Saturday" => "Sábado"
    }
    translations[day] || day
  end
end
