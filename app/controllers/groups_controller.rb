class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :edit, :update, :destroy, :enroll]

  def index
    @groups = Group.all
  end

  def show
    @available_clients = Client.all
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to @group, notice: 'Turma criada com sucesso.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @group.update(group_params)
      redirect_to @group, notice: 'Turma atualizada com sucesso.'
    else
      render :edit
    end
  end

  def destroy
    @group.destroy
    redirect_to groups_url, notice: 'Turma apagada com sucesso.'
  end

  def enroll
    client = Client.find(params[:client_id])
    if @group.clients << client
      redirect_to @group, notice: 'Aluno matriculado com sucesso.'
    else
      redirect_to @group, alert: 'Erro ao matricular o aluno.'
    end
  end

  private

  def set_group
    @group = Group.find(params[:id])
  end

  def group_params
    params.require(:group).permit(:day, :time, :age, :modality, :professor_titular_id)
  end
end
