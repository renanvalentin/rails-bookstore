class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :edit, :update, :destroy]
  respond_to :html

  def index
    @people = Person.all
    respond_with @people
  end

  def show
  end

  def new
    @person = Person.new
  end

  def edit
  end

  def create
    @person = Person.new(person_params)
    flash[:notice] = "Pessoa salva" if @person.save
    respond_with @person
  end

  def update
    flash[:notice] = "Pessoa atualizada" if @person.update(person_params)
    respond_with @person
  end

  def destroy
    flash[:notice] = "Pessoa apagada" if @person.destroy
    respond_with @person
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_person
    @person = Person.find(params[:id])
  end
  # Never trust parameters from the scary internet, only allow the white list through.
  def person_params
    params.require(:person).permit(:name, :email, :password, :born_at, :admin)
  end
end
