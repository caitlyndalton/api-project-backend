class EducationsController < ApplicationController
  def index
    educations = Education.all
    render json: educations.as_json
  end

  #   def create
  #     education = education.new(
  #       start_date: params[:start_date],
  #       end_date: params[:end_date],
  #       degree: params[:degree],
  #       university_name: params[:university_name],
  #       details: params[:details],

  #     education.save
  #     render json: education.as_json
  #   end

  #   def show
  #     education = education.find_by(id: params[:id])
  #     render json: education.as_json
  #   end

  #   def update
  #     education = education.find_by(id: params[:id])
  #     education.start_date = params[:start_date] || education.start_date
  #     education.end_date = params[:end_date] || education.end_date
  #     education.degree = params[:degree] || education.degree
  #     education.university_name = params[:university_name] || education.university_name
  #     student.details = params[:details] || student.details

  #     education.save
  #     render json: education.as_json
  #   end

  #   def destroy
  #     education = education.find_by(id: params[:id])
  #     education.destroy
  #     render json: { message: "Education destroyed." }
  #   end
end
