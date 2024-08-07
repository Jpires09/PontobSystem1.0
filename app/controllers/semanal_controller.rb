class SemanalsController < ApplicationController
  def index
    @semanal = Groups.all
  end
  
  def new
    @semanal = Semanal.new
    @semanal.build_groups
  end

end