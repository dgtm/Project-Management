class Project < ActiveRecord::Base
  validates :title, :presence => true
  validates :deadline, :presence => true
  has_many :task_groups, :dependent => :destroy
  attr_accessible :title, :status, :description, :deadline, :budget

end

# == Schema Information
#
# Table name: projects
#
#  id          :integer         not null, primary key
#  title       :string(255)
#  description :text
#  deadline    :datetime
#  status      :string(255)
#  budget      :integer
#  created_at  :datetime
#  updated_at  :datetime
#