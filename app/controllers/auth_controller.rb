# require 'jwt'

class AuthController < ApplicationController
  skip_before_action :authicate_user

  def auth_guest
    render json: {token: ::JWT.encode({ user_id: User.create.id }, nil, 'none')}.as_json
  end
end
