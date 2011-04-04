module ApplicationHelper
  def id2task(id)
    @task = Task.find(:all, :conditions => ['id = ?', id])
  end

  def rls(task, person)
    #Connection.delete_all(:task_id => task.id, :person_id => person.id)
    #flash[:alert]= "#{person.name} has been released form Task: #{task.name}"
  end

  def date_diff_in_days(date)
    difference = (date - Date.today).to_i
    if difference > -1
      difference = "#{difference} days remaining"
    else
      difference = "Expired"
    end
    difference
  end
end
