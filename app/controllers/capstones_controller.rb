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

  def delete
    capstone = Capstone.find_by(id: params[:id])
    capstone.destroy
  end
end
