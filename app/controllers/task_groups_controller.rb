class TaskGroupsController < ApplicationController
  def index
    # @tg=TaskGroup.find(paramas[:id])
    # @project = @tg.project
     # @task_groups = @project.TaskGroups.all
    @project = Project.find(params[:project_id])
    @task_groups = @project.task_groups.all
  end

  def show
      @task_group=TaskGroup.find(params[:id])
      @project = @task_group.project
      @tasks= @task_group.tasks.all
  end

  def create
    @project=Project.find(params[:project_id])
    @task_group = @project.task_groups.new(params[:task_group])
    @task_group.save
    if @task_group.save
       redirect_to project_task_groups_path, :notice =>'New TaskGroup added'
     else
       render :action => "new", :alert => 'TaskGroup couldnot be added. Try again'
     end
  end

  def new
    @project = Project.find(params[:project_id])
    @task_group = @project.task_groups.new
  end
end
