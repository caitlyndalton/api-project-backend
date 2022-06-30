class StudentsController < ApplicationController
  def index
    students = Student.all
    render json: students.as_json
  end

  def create
    student = Student.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      short_bio: params[:short_bio],
      LinkedIn_URL: params[:LinkedIn_URL],
      twitter_handle: params[:twitter_handle],
      personal_blog: params[:personal_blog],
      online_resume_url: params[:online_resume_url],
      github_url: params[:github_url],
      photo: params[:photo],
    )
    student.save
    render json: student.as_json
  end

  def show
    student = Student.find_by(id: params[:id])
    render json: student.as_json
  end
end
