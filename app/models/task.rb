class Task < ActiveRecord::Base
  belongs_to :TaskGroup
end

# == Schema Information
#
# Table name: tasks
#
#  id            :integer         not null, primary key
#  name          :string(255)
#  duration      :integer
#  task_group_id :integer
#  status        :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

