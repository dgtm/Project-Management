class TasksController < ApplicationController
  def index
    @task_group = TaskGroup.find(params[:id])
    @tasks= @task_group.tasks.all
  end

  def create
    @task_group = TaskGroup.find(params[:task_group_id])
    if @task = @task_group.tasks.create(params[:task])
      redirect_to task_group_path(@task_group)
    else
      render :action => "new", :alert => 'Task couldnot be added. Try again'
    end
  end

  def new
    @task_group = TaskGroup.find(params[:task_group_id])
    @task = @task_group.tasks.new
  end

  def edit
    @task_group = TaskGroup.find(params[:task_group_id])

  end

  def show
    @people = Person.all
    @task = Task.find(params[:id])
    @task_group = TaskGroup.find(params[:task_group_id])

  end

  def destroy
  end

  def update
  end

end
