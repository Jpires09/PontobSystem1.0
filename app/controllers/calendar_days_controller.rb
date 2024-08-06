class CalendarDaysController < ApplicationController
  before_action :set_calendar_day, only: %i[show]

  def show
    # Aqui você pode carregar informações adicionais se necessário
  end

  private

  def set_calendar_day
    @calendar_day = CalendarDay.find(params[:id])
  end
end
