class EducationsController < ApplicationController
  def create
    education = Education.new({
      start_date: Date.new(params[:start_date]),
      end_date: Date.new(params[:end_date]),
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

  def delete
    education = Education.find_by(id: params[:id])
    education.destroy
  end
end
