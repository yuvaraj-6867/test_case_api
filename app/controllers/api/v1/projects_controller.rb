class Api::V1::ProjectsController < ApplicationController
  def index
    projects = Project.all
    render json: projects
  end

  def create
    project = Project.new(project_params)
    if project.save
      render json: project, status: :created
    else
      render json: { errors: project.errors }, status: :unprocessable_entity
    end
  end

  def show
    project = Project.find(params[:id])
    render json: project
  end

  private

  def project_params
    params.require(:project).permit(:name)
  end
end