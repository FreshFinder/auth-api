class Api::V1::SessionsController < ApplicationController

  def create
    user = User.from_omniauth(request.env["omniauth.auth"])
    render json: user
  end

end
