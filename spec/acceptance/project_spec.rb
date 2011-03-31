require 'acceptance/acceptance_helper'

feature "Title" do
  scenario "Crawling through the Project Index Page for finding title ProjectX" do
    Person.create!(:email => "test@email.com", :password => "test123")
    visit new_person_session_path
    fill_in("Email", :with => "test@email.com")
    fill_in("Password", :with => "test123")
    click_button "Sign in"
    @project = Project.create!(:title => 'Project X', :status => "Pending")
    visit projects_path(@project)
    page.should have_content("Project X")
  end
end