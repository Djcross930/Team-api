class CapstonesController < ApplicationController

  def create
    capstone = Capstone.new({
      name: params[:name],
      description: params[:description],
      url: params[:url],
      screenshot: params[:screenshot],
      student_id: current_user.student.id,
    })
  end

  def show
    capstone = Capstone.find_by(id: params[:id])
    render json: capstone.as_json
  end

  def edit
    capstone = Capstone.find_by(id: params[:id])
    capstone.name = params[:name] || capstone.name
    capstone.description = params[:description] || capstone.description
    capstone.url = params[:url] || capstone.url
    capstone.screenshot = params[:screenshot] || capstone.screenshot
    if capstone.save
      render json: capstone.as_json
    else
      render json: capstone.errors.full_messages, status: 422
    end

  end



  def delete
    capstone = Capstone.find_by(id: params[:id])
    capstone.destroy
  end
end
