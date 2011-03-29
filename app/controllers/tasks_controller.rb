class TasksController < ApplicationController
  def index
    @task_group = TaskGroup.find(params[:id])
    @tasks= @task_group.tasks.all
  end

  def create
    @task_group = TaskGroup.find(params[:task_group_id])
    @task = @task_group.tasks.create(params[:task])
  end

  def new
    @task_group = TaskGroup.find(params[:task_group_id])
    @task = @task_group.tasks.new
  end

  def edit
  end

  def show
  end

  def destroy
  end

  def update
  end

end
