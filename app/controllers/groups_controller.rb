class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def show
    @group = Group.find(params[:id])
    @clients = @group.clients
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    @group.semanal_id = 1 # Definindo o valor default para semanal

    if @group.save
      redirect_to groups_path, notice: 'Turma foi criada com sucesso.'
    else
      render :new
    end
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])
    if @group.update(group_params)
      redirect_to @group, notice: 'Turma foi atualizada com sucesso.'
    else
      render :edit
    end
  end

  private

  def group_params
    params.require(:group).permit(:dia_da_semana, :horario, :faixa_etaria, :modalidade, :semanal_id)
  end
end
