class TurmasController < ApplicationController
  def index
    @turmas = Turma.all
  end

  def show
    @turma = Turma.find(params[:id])
  end

  def new
    @turma = Turma.new
  end

  def create
    @turma = Turma.new(turma_params)
    @turma.semanal_id = 1 # Definindo o valor default para semanal

    if @turma.save
      redirect_to turmas_path, notice: 'Turma foi criada com sucesso.'
    else
      render :new
    end
  end

  def edit
    @turma = Turma.find(params[:id])
  end

  def update
    @turma = Turma.find(params[:id])
    if @turma.update(turma_params)
      redirect_to @turma, notice: 'Turma foi atualizada com sucesso.'
    else
      render :edit
    end
  end

  private

  def turma_params
    params.require(:turma).permit(:dia_da_semana, :horario, :faixa_etaria, :modalidade, :semanal_id)
  end
end
