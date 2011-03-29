class ProjectsController < ApplicationController
 # before_filter :authenticate_person!

  def index
    @projects= Project.all
  end

  def create
    @project=Project.new(params[:project])
    if @project.save
      redirect_to projects_path,:notice =>'New Project added'
    else
      render :action => "new", :alert => 'Project couldnot be added. Try again'
    end
  end

  def new
    @project=Project.new
  end

  def destroy
    @project = Project.find(params[:id])
    if @project.destroy
       redirect_to projects_path, :notice => "Project Deleted Successfully"
    else
       redirect_to projects_path, :alert => "Project Deletion Failed!!"
    end
  end

  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(params[:project])
      redirect_to(projects_path, :notice => "Project Updated Successfully")
    else
      render :action => "edit", :alert => "Project Update Failure!!"
    end
  end

  def show
    @project = Project.find(params[:id])
    @task_groups= @project.task_groups
  end

  def edit
    @project = Project.find(params[:id])
  end

end
