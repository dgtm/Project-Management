require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
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

