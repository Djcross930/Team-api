class ExperiencesController < ApplicationController
  def create
    experience = Experience.new({

      start_date: Date.parse(params[:start_date]),
      end_date: Date.parse(params[:end_date]),
      job_title: params[:job_title],
      company_name: params[:company_name],
      details: params[:details],
      student_id: current_user.student.id,
    })
    experience.save
    render json: experience.as_json
  end

  def index
    experience = Experience.find_by(id: params[:id])
    render json: experience.as_json
  end

  def show
    experience = Experience.find_by(id: params[:id])
    render json: experience.as_json
  end

  def edit
    experience = Experience.find_by(id: params[:id])
    experience.start_date = Date.parse(params[:start_date]) || experience.start_date
    experience.end_date = Date.parse(params[:end_date]) || experience.start_date
    experience.job_title = params[:job_title] || experience.job_title
    experience.company_name = params[:company_name] || experience.company_name
    experience.details = params[:details] || experience.details
    if experience.save
      render json: experience.as_json
    else
      render json: experience.errors.full_messages, status: 422
    end
  end

  def destroy
    experience = Experience.find_by(id: params[:id])
    experience.destroy
    render json: { message: "Experience deleted" }
  end
end
