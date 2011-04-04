# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

    [
    {:title => "BlogApp", :description => "Simple Blog App in Rails", :status => "Pending"},
    {:title => "Student Management", :description => "Manage Students in School", :status => "Pending"},
    {:title => "Hotel Management", :description => "Manage Students in School", :status => "Pending"},
    {:title => "Hospital Management", :description => "Manage Students in School", :status => "Pending"}
    ].each do |attrs|
      project= Project.find_or_create_by_title(attrs)
    end

    [
    {:name => "Ram", :email => "ram@email.com", :password => "password" },
    {:name => Faker::Name.name, :email => Faker::Internet.email, :password => "password" },
    {:name => Faker::Name.name, :email => Faker::Internet.email, :password => "password" },
    {:name => Faker::Name.name, :email => Faker::Internet.email, :password => "password" }
    ].each do |attrb|
      person= Person.find_or_create_by_email(attrb)
    end

    [
    {:name => "Pending" },
    {:name => "Ongoing" },
    {:name => "Finished" }    
    ].each do |attrb|
      person= TaskCategory.find_or_create_by_name(attrb)
    end