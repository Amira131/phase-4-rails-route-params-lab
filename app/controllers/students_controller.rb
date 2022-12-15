class StudentsController < ApplicationController

  def index
    
    students = Student.all
    render json: students, only: [:first_name, :last_name]
  end

  def show
  
    student = Student.find(params[:id])
    render json: student
  end




end
