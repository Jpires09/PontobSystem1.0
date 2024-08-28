class AttendancesController < ApplicationController
  def create
    @attendance = Attendance.new(attendance_params)

    if @attendance.save
      redirect_to @attendance, notice: 'Presença registrada com sucesso.'
    else
      render :new
    end
  end

  private

  def attendance_params
    params.require(:attendance).permit(:client_id, :group_id, :calendar_day_id)
  end
end
