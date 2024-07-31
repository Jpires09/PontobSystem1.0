class HomeController < ApplicationController
  def index
    @turmas = Turma.all
  end
end