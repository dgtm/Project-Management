Given /^when I fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  fill_in(field, :with => value)
end

Given /^fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  fill_in(field, :with => value)
end

Given /^should see "New Project added"$/ do
   page.should have_content("New Prject added")
end

Then /^(\d+) project should exist$/ do |arg1|
  Project.count.should == 1
end

Given /^I pressed "([^"]*)"$/ do |arg1|
  click_button "Create Project"
end

