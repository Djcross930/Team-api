class EducationsController < ApplicationController
  def create
    education = Education.new({
      start_date: Date.parse(params[:start_date]),
      end_date: Date.parse(params[:end_date]),
      degree: params[:degree],
      university_name: params[:university_name],
      student_id: current_user.student.id,
    })
    education.save
    render json: education.as_json
  end

  def show
    education = Education.find_by(id: params[:id])
    render json: education.as_json
  end

  def edit
    education = Education.find_by(id: params[:id])
    education.start_date = Date.parse(params[:start_date]) || education.start_date
    education.end_date = Date.parse(params[:end_date]) || education.start_date
    education.degree = params[:degree] || education.degree
    education.university_name = params[:university_name] || education.university_name
    if education.save
      render json: education.as_json
    else
      render json: education.errors.full_messages, status: 422
    end

  end


  def delete
    education = Education.find_by(id: params[:id])
    education.destroy
  end
end
