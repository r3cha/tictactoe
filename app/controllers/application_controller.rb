class ApplicationController < ActionController::API
  before_action :authicate_user

  private

  def authicate_user
    decoded_token = JWT.decode request.headers['Authorization'], nil, false
    User.find(decoded_token['user_id'])
  end
end
