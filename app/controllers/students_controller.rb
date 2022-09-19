class StudentsController < ApplicationController
  def create
  end

  def index
    students = Student.all()
    render json: [students]
  end

  def show
    student = Student.find_by(id: params[:id])
    render json: student
  end

  def edit
  end

  def delete
    student = Student.find_by(id: params[:id])
    student.destroy
  end
end
