Given /^I am authenticated$/ do
  Person.create!(:email => "test@email.com", :password => "test123")
  visit('/people/sign_in')
  fill_in "Email", :with => 'test@email.com'
  fill_in "Password", :with => 'test123'
  click_button "Sign in"
end


