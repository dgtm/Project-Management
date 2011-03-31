class PeopleController < ApplicationController
  def new
    @person = Person.new
  end

  def create
    if @person = Person.create(params[:id])
      UserMailor.welcome_email(@person).deliver
      redirect_to new_person_path, :notice => "New Person added"
    end
  end

  def index
    @people = Person.all
  end
end

