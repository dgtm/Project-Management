# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

[
  {:title => "BlogApp", :description => "Simple Blog App in Rails"},
  {:title => "Student Management", :description => "Manage Students in School"},
  {:title => "Hotel Management", :description => "Manage Students in School"},
  {:title => "Hospital Management", :description => "Manage Students in School"}
  ].each do |attr|
    project= Project.find_or_create_by_title(attr)
  end

  [
     {:name => "Ram", :email => "ram@email.com", :password => "password" },
    {:name => Faker::Name.name, :email => Faker::Internet.email, :password => "password" },
    {:name => Faker::Name.name, :email => Faker::Internet.email, :password => "password" },
    {:name => Faker::Name.name, :email => Faker::Internet.email, :password => "password" }
    ].each do |attr|
      person= Person.create!(attr)
      person.name = Faker::Name.name
      person.save
    end
