require 'test_helper'

class TaskGroupTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
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

