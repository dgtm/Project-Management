describe Task do

  before do
    @task = Task.create(:name => 'Adding Search')
  end

  describe "#set_name" do
    it "Should set Task Name" do
      @task.set_name.should == 'Adding Search'
    end
  end

  describe "While creating task, it should have corresponding taskgroup" do
    it "should have a taskgroup" do
      task = Task.create!(:name => 'Build Block', :task_group_id => 1)
      task.task_group_id.should == 1
    end
  end
end