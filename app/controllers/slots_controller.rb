class SlotsController < ApplicationController
  def index
    @slots = Slot.all
  end

  def show
    @slot = Slot.find(params[:id])
  end

  def new
    @slot = Slot.new
  end

  def create
    @slot = Slot.new(slot_params)
    @slot.semanal_id = 1 # Definindo o valor default para semanal

    if @slot.save
      redirect_to slots_path, notice: 'Turma foi criada com sucesso.'
    else
      render :new
    end
  end

  def edit
    @slot = Slot.find(params[:id])
  end

  def update
    @slot = Slot.find(params[:id])
    if @slot.update(slot_params)
      redirect_to @slot, notice: 'Turma foi atualizada com sucesso.'
    else
      render :edit
    end
  end

  private

  def slot_params
    params.require(:slot).permit(:dia_da_semana, :horario, :faixa_etaria, :modalidade, :semanal_id)
  end
end
