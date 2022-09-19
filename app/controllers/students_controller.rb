class StudentsController < ApplicationController
  def create
    @student = Student.new({
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      short_bio: params[:short_bio],
      linked_in: params[:linked_in],
      twitter: params[:twitter],
      blog_or_website: params[:blog_or_website],
      online_resume: params[:online_resume],
      github: params[:github],
      photo: params[:photo],
      user_id: current_user.id,
    })
    @student.save
    render json: student.as_json
    # Remember to change to a template later!
  end

  def index
    @students = Student.all()
    render template: "students/index"
  end

  def show
    student = Student.find_by(id: params[:id])
    render json: student
  end

  def edit
    student = Student.find_by(id: params[:id])
  end

  def delete
    student = Student.find_by(id: params[:id])
    student.destroy
  end
end
