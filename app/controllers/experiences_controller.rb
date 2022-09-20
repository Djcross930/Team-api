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

  def show
    @experience = Experience.find_by(id: params[:id])
    render template: "students/show"
  end

  def edit
    @experience = Experience.find_by(id: params[:id])
    @experience.start_date = Date.parse(params[:start_date]) || @experience.start_date
    @experience.last_name = params[:last_name] || @experience.last_name
    @experience.email = params[:email] || @experience.email
    @experience.phone_number = params[:phone_number] || @experience.phone_number
    @experience.short_bio = params[:short_bio] || @experience.short_bio
    @experience.linked_in = params[:linked_in] || @experience.linked_in
    @experience.twitter = params[:twitter] || @student.twitter

    if student.save
      render template: "students/show"
    else
      render json: student.errors.full_messages, status: 422
    end
  end

  def delete
    experience = Experience.find_by(id: params[:id])
    experience.destroy
  end
end
