require 'acceptance/acceptance_helper'

feature "Title" do

  background do
    @project = Project.create!(:title => 'Project X', :status => "Pending")
  end

  scenario "Crawling through the Project Index Page for finding title ProjectX" do
    visit projects_path(@project)


      page.should have_content("Project X")

  end

end