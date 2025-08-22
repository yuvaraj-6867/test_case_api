class Api::V1::TestCasesController < ApplicationController
  def index
    test_cases = TestCase.all
    render json: test_cases
  end

  def create
    test_case = TestCase.new(test_case_params)
    if test_case.save
      render json: test_case, status: :created
    else
      render json: { errors: test_case.errors }, status: :unprocessable_entity
    end
  end

  def show
    test_case = TestCase.find(params[:id])
    render json: test_case
  end

  private

  def test_case_params
    params.require(:test_case).permit(
      :title, :section, :priority, :test_type, :template_type, 
      :estimate, :reference, :automation_type, :preconditions, 
      :steps, :project_id
    )
  end
end