# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
PMS::Application.initialize!

Time::DATE_FORMATS[:project_date] = "%B %d on %I:%M %p"