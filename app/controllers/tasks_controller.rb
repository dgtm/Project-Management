class TasksController < ApplicationController
  def index
    @task_group = TaskGroup.find(params[:task_group_id])
    @tasks= @task_group.Tasks.all
  end

  def create
  end

  def new
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
