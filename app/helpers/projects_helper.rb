module ProjectsHelper

  def project_status(project)
    @task_groups = project.task_groups
    @bool = true
    @count = 0
    @complete_count = 0

    @task_groups.each do |task_group|
      task_group.tasks.each do |task|
        @count += 1
        if task.status != "Finished"
          @bool = false

      else
        @complete_count += 1
      end
      end
    end
   if @count != 0
     @percent_complete = (@complete_count/@count.to_f) * 100
   else
     @percent_complete = 0
   end
   @percent_complete
  end
end
