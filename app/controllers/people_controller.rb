class PeopleController < ApplicationController

  def show
    @person = Person.find(params[:id])
    @connections = Connection.find(:all, :order => 'id DESC', :conditions => [ 'person_id = ?', @person.id])
  end

  def index
    @people = Person.all
  end
end

