describe Task do

  before do
    @task = Task.create(:name => 'Adding Search')
  end

  describe "#set_name" do
    it "Should Show Task Name" do
      @task.set_name.should == 'Adding Search'
    end
  end
end