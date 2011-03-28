class TaskGroupsController < ApplicationController
  def index
    @project = Project.find(params[:project_id])
    @task_groups = @project.TaskGroups.all
  end

  def create
    @project=Project.find(params[:project_id])
    @task_group = @project.TaskGroups.new(params[:task_group])
    @task_group.save
    if @task_group.save
       redirect_to project_task_groups_path, :notice =>'New TaskGroup added'
     else
       render :action => "new", :alert => 'TaskGroup couldnot be added. Try again'
     end
  end

  def new
    @project = Project.find(params[:project_id])
    @task_group = @project.TaskGroups.new
  end
  #
  #   def destroy
  #     @project = Project.find(params[:id])
  #     if @project.destroy
  #        redirect_to projects_path, :notice => "Project Deleted Successfully"
  #     else
  #        redirect_to projects_path, :alert => "Project Deletion Failed!!"
  #     end
  #   end
  #
  #   def update
  #     @project = Project.find(params[:id])
  #     if @project.update_attributes(params[:project])
  #       redirect_to(projects_path, :notice => "Project Updated Successfully")
  #     else
  #       render :action => "edit", :alert => "Project Update Failure!!"
  #     end
  #   end
  #
  #   def show
  #     @project = Project.find(params[:id])
  #   end
  #
  #   def edit
  #     @project = Project.find(params[:id])
  #   end
end
