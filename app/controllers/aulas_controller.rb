class AulasController < ApplicationController
  def index
    @aulas = Aula.all
  end

  def show
    @aula = Aula.find(params[:id])
  end

  def new
    @aula = Aula.new
  end

  def create
    @aula = Aula.new(aula_params)
    @aula.aquecimento ||= {"articular" => "", "cardio" => "", "tecnico" => ""}
    @aula.data = Date.strptime(params[:aula][:data], '%d/%m/%Y') if params[:aula][:data].present?
    if @aula.save
      redirect_to aulas_path, notice: 'Aula was successfully created.'
    else
      render :new
    end
  end
  
  private

  def aula_params
    params.require(:aula).permit(:data, :conteudo, :objetivo, :tecnico, aquecimento: [:articular, :cardio, :tecnico], fisico: [:grupo, :exercicio])
  end
  
  def destroy
    @aula = Aula.find(params[:id])
    @aula.destroy
    redirect_to aulas_path, notice: 'Aula was successfully destroyed.'  
  end  
end
