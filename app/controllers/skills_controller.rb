class SkillsController < ApplicationController
  def create
    skill = Skill.new({
      skill: params[:skill],
      student_id: current_user.student.id,
    })
    skill.save

    render json: skill.as_json
  end

  def index
    skills = Skill.where(student_id: params[:student_id])
    render json: skills.as_json
  end

  def show
    skill = Skill.find_by(id: params[:id])
    render json: skill.as_json
  end

  def edit
    skill = Skill.find_by(id: params[:id])
    skill.skill = params[:skill] || @student.skill
    if skill.save
      render json: skill.as_json
    else
      render json: skill.errors.full_messages, status: 422
    end
  end

  def delete
    skill = Skill.find_by(id: params[:id])
    skill.destroy
    render json: { message: "you have removed the selected skill" }
  end
end
