class UsersController < ApplicationController
  # GET
  def index
    @users = Users.all
    json_response(@users)
  end

  # POST
  def create
    @user = Users.create!(user_params)
    json_response(@user, :created)
  end

  private
  def user_params
    params.permit(:username, :email, :birthday, :producttype, :href, :uri, :imageurl, :followers, :visits)
  end
end
