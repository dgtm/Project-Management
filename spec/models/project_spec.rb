require 'spec_helper'

describe Project do
  it { should have_many :task_groups }
end