class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @students = Student.all
  end

  def activate
    #binding.pry
    @student = Student.find_by_id(params[:id])
    @student.active = !@student.active
    @student.save
    redirect_to ("/students/" + params[:id].to_s)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
