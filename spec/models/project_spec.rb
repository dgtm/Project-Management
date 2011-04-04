require 'spec_helper'

describe Project do
  it { should have_many :task_groups }
  it { should validate_presence_of :title }

  context "title should not be blank" do
    it "should have title set" do
      proj= Project.create(:title => 'Title 1')
      proj.title.should_not == ''
    end
  end
end