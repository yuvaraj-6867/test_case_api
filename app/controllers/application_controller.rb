class ApplicationController < ActionController::API
  def index
    render json: { message: 'Test Case API is running', status: 'ok' }
  end
end
