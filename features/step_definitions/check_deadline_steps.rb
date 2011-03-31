Then /^it is necessary that the deadline be later than the current date$/ do
  current_date = Time.now.year.to_s + "-" + Time.now.month.to_s + "-" + Time.now.day.to_s
  Project.first.deadline.should > current_date.to_date
end