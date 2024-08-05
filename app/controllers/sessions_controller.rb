class SessionsController < ApplicationController
  def index
    @sessions = Session.all
  end

  def show
    @session = Session.find(params[:id])
  end

  def new
    @session = Session.new
    @session.build_warm_up
    @session.build_physical
  end

  def create
    @session = Session.new(session_params)
    if @session.save
      redirect_to @session, notice: 'Aula was successfully created.'
    else
      render :new
    end
  end

  def edit
    @session = Session.find(params[:id])
  end

  def update
    @session = Session.find(params[:id])
    if @session.update(session_params)
      redirect_to @session, notice: 'Aula was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @session = Session.find(params[:id])
    @session.destroy
    redirect_to sessions_path, notice: 'Aula was successfully destroyed.'
  end

  private

  def session_params
    params.require(:session).permit(:data, :conteudo, :objetivo, :tecnico, 
    aquecimento_attributes: [:id, :articular, :cardio, :tecnico, :_destroy], 
    fisico_attributes: [:id, :grupo, :fase, :exercicio, :_destroy])
  end
end
