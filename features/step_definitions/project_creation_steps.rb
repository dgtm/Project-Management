Given /^when I fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  fill_in(field, :with => value)
end

Given /^fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  fill_in(field, :with => value)
end

Given /^should see "([^"]*)"$/ do |arg1|
   page.should have_content(arg1)
end

Then /^(\d+) project should exist$/ do |arg1|
  Project.count.should == 1
end


Given /^I pressed "([^"]*)"$/ do |arg1|
  click_button "Create Project"
end

Given /^I create a new project called "([^"]*)" with deadline "([^"]*)"$/ do |project_name,deadline|
  fill_in("Title", :with => project_name)
  fill_in("Status", :with => "Startup")
  fill_in("Deadline", :with => deadline)
  click_button("Create Project")
end


