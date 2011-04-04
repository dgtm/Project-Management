class PeopleController < ApplicationController
  def new
    @person = Person.new
  end

  def create
    if @person = Person.create(params[:id])
      redirect_to new_person_path, :notice => "New Person added"
    end
  end

  def show
    @person = Person.find(params[:id])
    @connections = Connection.find(:all, :order => 'id DESC', :conditions => [ 'person_id = ?', @person.id])
  end

  def index
    @people = Person.all
  end
end
