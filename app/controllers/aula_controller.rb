class AulasController < ApplicationController
  def index
    @aulas = Aula.all
  end

  def new
    @aula = Aula.new
  end

  def create
    @aula = Aula.new(aula_params)
    if @aula.save
      redirect_to aulas_path, notice: 'Aula was successfully created.'
    else
      render :new
    end
  end

  private

  def aula_params
    params.require(:aula).permit(:data, :conteudo, :objetivo, :tecnico, :fisico, aquecimento: [:articular, :cardio, :tecnico])
  end

  def destroy
    @aula = Aula.find(params[:id])
    @aula.destroy
    redirect_to aulas_path, notice: 'Aula was successfully destroyed.'    
end
