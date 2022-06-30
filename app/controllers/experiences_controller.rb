class ExperiencesController < ApplicationController
  def index
    experiences = Experience.all
    render json: experiences.as_json
  end

  # def create
  #   experience = Experience.new(
  #     start_date: params[:start_date],
  #     end_date: params[:end_date],
  #     job_title: params[:job_title],
  #     company_name: params[:company_name],
  #   )
  #   experience.save
  #   render json: experience.as_json
  # end

  # def show
  #   experience = Experience.find_by(id: params[:id])
  # end
end
