class UsersController < ApplicationController
  def index
    users = 'juan'
    render json: users, status: :ok
  end
end
