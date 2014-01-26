class ProjectsController < ApplicationController
  before_filter :find_project, only: [:show, :edit, :update, :destroy]
  before_filter :authorize_admin!, except: [:index, :show]

  def index
    @projects = Project.all
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
  end

  def edit
  end

  def update
    if @project.update_attributes(params[:project])
      redirect_to @project,
      notice: "Project has been updated."

    else
      flash[:notice] = "There was an issue updating your project."
      render "edit"
    end
  end

  def destroy
    @project.destroy
    redirect_to projects_path,
    notice: "#{@project.name} has been deleted!"
  end

  private

    def find_project
      @project = Project.find(params[:id])
      rescue ActiveRecord::RecordNotFound
      flash[:alert] = "The project you were looking for could not be found."
      redirect_to projects_path
    end
end
