class TasksController < ApplicationController
  def index
    @task_group = TaskGroup.find(params[:id])
    @tasks= @task_group.tasks.all
  end

  def create
    @task_group = TaskGroup.find(params[:task_group_id])
    @task_group =
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
    @task = Task.find(params[:id])
    @task_group = @task.task_group
  end

  def show
    @people = Person.all
    @task = Task.find(params[:id])
    @task_group= @task.task_group
    @connections = Connection.where(:task_id => @task.id).to_a
  end

  def update
    @task = Task.find(params[:id])
    if @task.update_attributes(params[:task])
        redirect_to task_path(@task), :notice => "Task Updated Successfully"
    else
        redirect_to :action => "edit", :alert => "Task Update Failed!!"
    end
  end

  def assignment
    @task = Task.find(params[:task_id])
    @task_group = @task.task_group
    @person = Person.find(params[:people])
    Connection.find_or_create_by_task_id_and_person_id(:task_id => @task.id, :person_id => @person.id)     
    redirect_to task_group_task_path(@task_group, @task), :notice => @task.name + " with id " + @task.id.to_s + " is now assigned to " + @person.name
  end

   def release
    #@task = Task.find(params[:id])
    #@person = Person.find(params[:person_id])   
    #Connection.delete_all(:task_id => task.id, :person_id => person.id)
    #flash[:alert]= "#{person.name} has been released form Task: #{task.name}" 
    #redirect_to person_path(@person)
  end 
end
