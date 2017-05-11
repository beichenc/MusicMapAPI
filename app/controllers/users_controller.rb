class UsersController < ApplicationController
  # GET
  def index
    @users = User.all
    json_response(@users)
  end

  # POST
  def create
    @user = User.create!(user_params)
    json_response(@user, :created)
  end

  #check if the user have been registered
  def check
    if User.where("username = ?", params[:username]).blank?
      json_response(false)
    else
      json_response(true)

  end

  private
  def user_params
    params.permit(:username, :email, :birthday, :producttype, :href, :uri, :imageurl, :followers, :visits)
  end
end
