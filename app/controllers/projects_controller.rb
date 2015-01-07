class ProjectsController < ApplicationController

  before_filter :find_project , :only => [:edit, :show, :destroy, :update]	
	
  def new 
		@project = Project.new
	end

	def create
		@project = Project.new(params[:project])

    if @project.save
      redirect_to projects_path
    else
      redirect_to :back
    end
	end 

  def index
    @title = Project.column_names.reject {|t| ["id","created_at","updated_at"].include?(t)}
    @projects = Project.all

  end

  def edit
    # @project = Project.find(params[:id])
  end

  def update
    # binding.pry
    # @project = Project.find(params[:id])
    @project.update_attributes params[:project]
    redirect_to projects_path
  end

  def destroy
    @project.destroy
    redirect_to projects_path
  end

  def show
    # @project = Project.find(params[:id])
  end

  def top_hits 
    @projects = Project.expensive
  end

  private
  def find_project
    @project = Project.find(params[:id])
  end
end
