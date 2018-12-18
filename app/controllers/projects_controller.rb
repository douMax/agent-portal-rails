class ProjectsController < ApplicationController
  def new
  end

  def index 
    
  end 

  def show
    @project = Project.find(params[:id])
    @lots = @project.lots
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
