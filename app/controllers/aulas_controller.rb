class AulasController < ApplicationController
  def index
    @aulas = Aula.all
  end

  def show
    @aula = Aula.find(params[:id])
  end

  def new
    @aula = Aula.new
    @aula.build_aquecimento
    @aula.build_fisico
  end

  def create
    @aula = Aula.new(aula_params)
    if @aula.save
      redirect_to @aula, notice: 'Aula was successfully created.'
    else
      render :new
    end
  end

  def edit
    @aula = Aula.find(params[:id])
  end

  def update
    @aula = Aula.find(params[:id])
    if @aula.update(aula_params)
      redirect_to @aula, notice: 'Aula was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @aula = Aula.find(params[:id])
    @aula.destroy
    redirect_to aulas_path, notice: 'Aula was successfully destroyed.'
  end

  private

  def aula_params
    params.require(:aula).permit(:data, :conteudo, :objetivo, :tecnico, 
    aquecimento_attributes: [:id, :articular, :cardio, :tecnico, :_destroy], 
    fisico_attributes: [:id, :grupo, :fase, :exercicio, :_destroy])
  end
end
