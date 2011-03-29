require 'spec_helper'

describe TaskGroup do
  it { should have_many :tasks }
  it { should belong_to :project }

  describe "Context to test title set" do
    before do
      @project=Project.create(:title => "Rakesh")
    end

    it "Should have title set" do
      @project.title.should == "Rakesh"
    end
  end


end

