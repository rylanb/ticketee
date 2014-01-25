class ProjectsController < ApplicationController

  def index
  end


  def new
    @project = Project.new
  end

  def create
    @project = Project.new(params[:project])
    if @project.save
      redirect_to @project,
      notice: "Project has been created."

    else
      flash[:notice] = "There was an issue saving your project."
      render "new"
    end
  end

  def show
    @project = Project.find(params[:id])
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(params[:project])
      redirect_to @project,
      notice: "Project has been updated."

    else
      flash[:notice] = "There was an issue updating your project."
      render "edit"
    end
  end

end
