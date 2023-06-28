class ApplicationController < ActionController::API
  before_action :set_current_user

  private

  def set_current_user
    @current_user ||= User.find_by(id: current_user_id)
  end

  def current_user_id
    auth_header = request.headers['Authorization']
    token = auth_header.split(' ').last if auth_header
    JsonWebToken.decode(token) if token
  end
end
