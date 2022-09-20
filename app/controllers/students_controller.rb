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

    render template: "students/show"
  end

  def index
    @students = Student.all()
    render template: "students/index"
  end

  def show
    @student = Student.find_by(id: current_user.student.id)
    render template: "students/show"
  end

  def edit
    @student = Student.find_by(id: params[:id])
    @student.first_name = params[:first_name] || @student.first_name
    @student.last_name = params[:last_name] || @student.last_name
    @student.email = params[:email] || @student.email
    @student.phone_number = params[:phone_number] || @student.phone_number
    @student.short_bio = params[:short_bio] || @student.short_bio
    @student.linked_in = params[:linked_in] || @student.linked_in
    @student.twitter = params[:twitter] || @student.twitter
    @student.blog_or_website = params[:blog_or_website] || @student.blog_or_website
    @student.online_resume = params[:online_resume] || @student.online_resume
    @student.github = params[:github] || @student.github
    @student.photo = params[:photo] || @student.photo

    if @student.save
      render template: "students/show"
    else
      render json: @student.errors.full_messages, status: 422
    end
  end

  def delete
    @student = Student.find_by(id: params[:id])
    @student.destroy
    render json: { message: "you have removed the selected student" }
  end
end
