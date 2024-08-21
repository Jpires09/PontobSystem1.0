class CalendarDaysController < ApplicationController
  before_action :set_calendar_day, only: %i[show]

  def show
    @calendar = @calendar_day.calendar
    translated_day = translate_day(@calendar_day.date.strftime("%A"))
    @groups = Group.where(day: translated_day)
    @sessions = Session.where(date: @calendar_day.date)
    @events = @calendar_day.events
  end

  def create
    @calendar_day = CalendarDay.new(calendar_day_params)

    if @calendar_day.save
      EventGenerator.new(@calendar_day).call
      redirect_to @calendar_day, notice: 'Dia do calendário e eventos criados com sucesso.'
    else
      render :new
    end
  end

  private

  def set_calendar_day
    @calendar_day = CalendarDay.find(params[:id])
  end

  def translate_day(day)
    translations = {
      "Sunday" => "Domingo",
      "Monday" => "Segunda-Feira",
      "Wednesday" => "Quarta-Feira",
      "Tuesday" => "Terça-Feira",
      "Thursday" => "Quinta-Feira",
      "Friday" => "Sexta-Feira",
      "Saturday" => "Sábado"
    }
    translations[day] || day
  end
end
