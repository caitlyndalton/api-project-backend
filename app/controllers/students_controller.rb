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

  def update
    student = Student.find_by(id: params[:id])
    student.first_name = params[:first_name] || student.first_name
    student.last_name = params[:last_name] || student.last_name
    student.email = params[:email] || student.email
    student.phone_number = params[:phone_number] || student.phone_number
    student.short_bio = params[:short_bio] || student.short_bio
    student.LinkedIn_URL = params[:LinkedIn_URL] || student.LinkedIn_URL
    student.twitter_handle = params[:twitter_handle] || student.twitter_handle
    student.personal_blog = params[:personal_blog] || student.personal_blog
    student.online_resume_url = params[:online_resume_url] || student.online_resume_url
    student.github_url = params[:github_url] || student.github_url
    student.photo = params[:photo] || student.photo
    student.save
    render json: student.as_json
  end

  def destroy
    student = Student.find_by(id: params[:id])
    student.destroy
    render json: { message: "Student destroyed." }
  end
end
