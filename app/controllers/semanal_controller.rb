class SemanalsController < ApplicationController
  def index
    @semanal = Turmas.all
  end
  
  def new
    @semanal = Semanal.new
    @semanal.build_turmas
  end

end