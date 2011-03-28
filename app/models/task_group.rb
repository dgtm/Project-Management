class TaskGroup < ActiveRecord::Base
  belongs_to :Project
  has_many :Tasks, :dependent => :destroy
end

# == Schema Information
#
# Table name: task_groups
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  duration   :integer
#  created_at :datetime
#  updated_at :datetime
#  project_id :integer
#

