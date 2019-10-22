class SessionsController < ApplicationController
  def create
    response = {token: SecureRandom.urlsafe_base64}
    render json: response, status: :ok
  end
end
