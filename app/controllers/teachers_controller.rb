class TeachersController < ApplicationController
  def index
    teachers = Teacher.all 
    render json: teachers
  end

  def show
    teacher = Teacher.find_by(id: params[:id])
    if teacher
      render json: teacher
    else
      render json: { error: "teacher not found" }
    end
  end
end
